// Statemachine for the unicorn platform

#include <unicorn/unicorn_statemachine.h>

int main(int argc, char **argv)
{
	ros::init(argc, argv, "unicorn_statemachine");
	UnicornState statemachine;
	statemachine.printUsage();
	ros::Rate r(50);
	while(ros::ok())
	{
      statemachine.active();
	  ros::spinOnce();
	  r.sleep();
	}
	return 0;
}

PidController::PidController(float Kp, float Ki, float Kd, float tolerance)
: Kp_(Kp), Ki_(Ki), Kd_(Kd), tolerance_(tolerance)
{
	total_error_ = 0;
	previous_error_ = 0;
}

void PidController::setLimit(double lower, double upper)
{
	lower_limit_ = lower;
	upper_limit_ = upper;
}

float PidController::limit(float term)
{
	if (term < lower_limit_)
	{
		return lower_limit_;
	}
	else if (term > upper_limit_)
	{
		return upper_limit_;
	}
	return term;
}

void PidController::control(float& var, float error)
{
	float pidterm;
	if (error < tolerance_)
	{
		total_error_ = 0;
	}
	total_error_ += error;
	pidterm = error * Kp_ + total_error_ * Ki_ + (error-previous_error_) * Kd_;
	previous_error_ = error;
	var = limit(pidterm);
}

RefuseBin::RefuseBin()
{
	x = 0;
	y = 0;
	yaw = 0;
}

RangeSensor::RangeSensor(const std::string& sensor_topic)
: TOPIC(sensor_topic)
{
	range_sub_ = n_.subscribe(TOPIC.c_str(), 0, &RangeSensor::rangeCallback, this);
	range_ = 2.0;
}

void RangeSensor::rangeCallback(const sensor_msgs::Range& msg)
{
	range_ = msg.range;

}

float RangeSensor::getRange()
{
	return range_;
}

UnicornState::UnicornState() 
: move_base_clt_("move_base", true)
{
  bool run_global_loc;
  std::string odom_topic;

  if(!n_.getParam("max_angular_vel", MAX_ANGULAR_VEL))
  {
  	MAX_ANGULAR_VEL = 0.5;
  }
  ROS_INFO("MAX_ANGULAR_VEL: %f", MAX_ANGULAR_VEL);
  if(!n_.getParam("max_linear_vel", MAX_LINEAR_VEL))
  {
  	MAX_LINEAR_VEL = 0.3;
  }
  ROS_INFO("MAX_LINEAR_VEL: %f", MAX_LINEAR_VEL);
  if (!n_.getParam("odometry_topic", odom_topic))
  {
  	odom_topic = "odom";
  }
  if (!n_.getParam("frame_id", frame_id_))
  {
  	frame_id_ = "base_link";
  }
  ROS_INFO("[unicorn_statemachine] Robot frame_id: %s", frame_id_.c_str());
  ROS_INFO("[unicorn_statemachine] Listening to %s", odom_topic.c_str());

  move_base_cancel_pub_ = n_.advertise<actionlib_msgs::GoalID>("/move_base/cancel", 0);
  amcl_global_clt_ = n_.serviceClient<std_srvs::Empty>("/global_localization");
  cmd_vel_pub_ = n_.advertise<geometry_msgs::Twist>("/unicorn/cmd_vel", 0);
  odom_sub_ = n_.subscribe(odom_topic.c_str(), 0, &UnicornState::odomCallback, this);
  acc_cmd_srv_ = n_.advertiseService("cmd_charlie", &UnicornState::accGoalServer, this);
  range_sensor_list_["ultrasonic_bmr"] = new RangeSensor("ultrasonic_bmr");
  range_sensor_list_["ultrasonic_bml"] = new RangeSensor("ultrasonic_bml");

  n_.getParam("global_local", run_global_loc);
  if (run_global_loc)
  {
    globalLocalization();
  }

  state_ = current_state::MANUAL;
  loading_state_ = current_state::ALIGNING;
  move_base_active_ = 0;
  velocity_pid_ = new PidController(0.3, 0.1, 0.0 ,0.05);
  velocity_pid_->setLimit(-0.3, 0.3);

}
void UnicornState::globalLocalization()
{
  std_srvs::Empty srv;
  ros::service::waitForService("/global_localization", 1);

  if (amcl_global_clt_.call(srv))
  {
    ROS_INFO("[am_unicorn_interface]: Initialized amcl global localization");
  }
  else
  {
    ROS_ERROR("[am_unicorn_interface]: Failed to initialize amcl global localization");
  }
}

int UnicornState::getCharacter()
{
  static struct termios oldt, newt;
  tcgetattr( STDIN_FILENO, &oldt);           // save old settings
  newt = oldt;
  newt.c_lflag &= ~(ICANON);                 // disable buffering
  newt.c_cc[VMIN] = 0; newt.c_cc[VTIME] = 0;
  tcsetattr( STDIN_FILENO, TCSANOW, &newt);  // apply new settings

  int c = getchar();  // read character (non-blocking)

  tcsetattr( STDIN_FILENO, TCSANOW, &oldt);  // restore old settings
  return c;
}

std::string UnicornState::stateToString(int state)
{
	switch(state)
	{
		case current_state::AUTONOMOUS:
		return "AUTONOMOUS";

		case current_state::MANUAL:
		return "MANUAL";

		case current_state::LOADING:
		return "LOADING";

		case current_state::IDLE:
		return "IDLE";

		default:
		return "INVALID STATE";
	}
}

int UnicornState::getInput(float& val)
{
	float tmp;
	if ( !(std::cin >> tmp) )
    {
      std::cin.clear();
      std::cin.ignore();
      ROS_ERROR("Incorrect entry. Try again.");
      printUsage();
      return 0;
    }
    val = tmp;
    return 1;
}

bool UnicornState::accGoalServer(unicorn::CharlieCmd::Request  &req, unicorn::CharlieCmd::Response &res)
{
	if (state_ == current_state::MANUAL)
	{
		res.response = 0;
		return false;
	}
	if(sendGoal(req.goal.x, req.goal.y, req.goal.theta))
	{
		res.response = 1;
	}
	else
	{
		res.response = 0;
	}
}

void UnicornState::processKey(int c)
{
  float x,y,yaw;
  if (c == 'h')
  {
    cancelGoal();
  }
  else if (c == 'l')
  {
    globalLocalization();
  }
  else if (c == '1')
  {
  	if (state_ == current_state::MANUAL)
  	{
  		ROS_ERROR("Manual drive is active!");
  	}
  	else
  	{
  		std::cout << "Target x: ";
  		if(!getInput(x))
    		return;
    	std::cout << "Target y: ";
    	if(!getInput(y))
    		return;
    	std::cout << "Target yaw: ";
    	if(!getInput(yaw))
    		return;
    	sendGoal(x,y,yaw);
    	state_ = current_state::AUTONOMOUS;
    	printUsage();
  	}
  }
  else if (c == '2')
  {
  	cancelGoal();
    state_ = current_state::IDLE;
    printUsage();
  }
  else if (c == '3')
  {
  	cancelGoal();
  	move_base_active_ = 0;
  	state_ = current_state::MANUAL;
  	man_cmd_vel_.angular.z = 0;
	man_cmd_vel_.linear.x = 0;
  	printUsage();
  }
  else if (c == '4')
  {
	std::cout << "Refuse bin x: ";
 	if(!getInput(refuse_bin_pose_.x))
   		return;
   	std::cout << "Refuse bin y: ";
   	if(!getInput(refuse_bin_pose_.y))
   		return;
   	std::cout << "Refuse bin yaw: ";
   	if(!getInput(refuse_bin_pose_.yaw))
   		return;
  	state_ = current_state::LOADING;
  	loading_state_ = current_state::ALIGNING;
  	man_cmd_vel_.angular.z = 0;
	man_cmd_vel_.linear.x = 0;
  	printUsage();
  }
  else if (c == '5')
  {
   	std::cout << "Target x: ";
  	if(!getInput(x))
   		return;
   	std::cout << "Target y: ";
   	if(!getInput(y))
   		return;
   	std::cout << "Target yaw: ";
   	if(!getInput(yaw))
   		return;
   	sendMoveCmd(x,y,yaw);
   	state_ = current_state::AUTONOMOUS;
   	printUsage();
  }
}

void UnicornState::printUsage()
{
	std::cout << "------------------- State: " << stateToString(state_).c_str() << " -------------------" << std::endl 
	<< "1: Specify new goal 2: Idle mode 3: Manual control 4: Init Load 5: Send command" << std::endl
	<< "H: Pause execution  L: Init global localization" << std::endl;
}

void UnicornState::odomCallback(const nav_msgs::Odometry& msg)
{
	tf::Pose pose;
	tf::poseMsgToTF(msg.pose.pose, pose);
	current_yaw_ = tf::getYaw(pose.getRotation());
	current_vel_ = msg.twist.twist.linear.x;
}

void UnicornState::active()
{
	int c = getCharacter();
	processKey(c);
	float current_range = (range_sensor_list_["ultrasonic_bmr"]->getRange()*sin(M_PI/6) +
							range_sensor_list_["ultrasonic_bml"]->getRange()*sin(M_PI/6)) / 2;
	
	switch(state_)
	{
		case current_state::AUTONOMOUS:
	  	if(move_base_clt_.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
	  	{
	    	ROS_INFO("[unicorn_statemachine] Goal reached");
	    	state_ = current_state::IDLE;
	    	printUsage();
	  	}
		break;

		case current_state::MANUAL:
		if (c == 'a')
		{
			man_cmd_vel_.angular.z = MAX_ANGULAR_VEL;
		}
		else if (c == 'w')
		{
			man_cmd_vel_.linear.x = MAX_LINEAR_VEL;
		}
		else if (c == 'd')
		{
			man_cmd_vel_.angular.z = -MAX_ANGULAR_VEL;
		}
		else if (c == 's')
		{
			man_cmd_vel_.angular.z = 0;
			man_cmd_vel_.linear.x = 0;
		}
		else if (c == 'x')
		{
			man_cmd_vel_.linear.x = -MAX_LINEAR_VEL;
		}
		cmd_vel_pub_.publish(man_cmd_vel_);
		break;

		case current_state::LOADING:
		
		ROS_INFO("current range: %f", current_range);
		switch(loading_state_)
		{
			case current_state::ALIGNING:
				if (!move_base_active_)
		    	{
		    		ROS_INFO("[unicorn_statemachine] Aligning with garbage disposal...");
		    		sendGoal(refuse_bin_pose_.x + 1.5*cos(refuse_bin_pose_.yaw)
		    			,refuse_bin_pose_.y + 1.5*sin(refuse_bin_pose_.yaw)
		    			,refuse_bin_pose_.yaw);
		    		move_base_active_ = 1;
		    		return;
		    	}
			    if (move_base_clt_.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
			    {
			    	move_base_active_ = 0;
			    	loading_state_ = current_state::ENTERING;
			    	ROS_INFO("[unicorn_statemachine] Entering garbage disposal");
			    }
				break;
			/** Moves the machine close to a wall.
			* Slows down the machine when range to wall is below 30cm.
			*/
			case current_state::ENTERING:
				man_cmd_vel_.angular.z = 0;
				// float current_range = (range_sensor_list_["ultrasonic_bmr"]->getRange()*sin(M_PI/6) +
				// 					  range_sensor_list_["ultrasonic_bml"]->getRange()*sin(M_PI/6)) / 2;
				// ROS_INFO("current range: %f", current_range);
				if((current_range > 0.3)
					&&(current_range < 2.0))
				{
					man_cmd_vel_.linear.x = -0.17;
					/*Alternatively use pid*/
					/*float tmp;
					velocity_pid_->control(tmp, -current_range);
					man_cmd_vel_.linear.x = tmp;*/
				}
				else
				{
					ROS_INFO("Current vel: %f", current_vel_);
					if (std::abs(current_vel_) < 0.05)
					{
						man_cmd_vel_.linear.x = 0.0;
						loading_state_ = current_state::EXITING;
						ROS_INFO("[unicorn_statemachine] Entered garbage disposal. Waiting for exit signal");
					}
					else
					{
						man_cmd_vel_.linear.x = -0.1;
					}
				}
				cmd_vel_pub_.publish(man_cmd_vel_);

				break;

			case current_state::EXITING:
				if (c == 'k')
				{
		    		ROS_INFO("[unicorn_statemachine] Exiting garbage disposal");
		    		man_cmd_vel_.linear.x = 0.15;
				}
				if ((current_range > 1.0)
					&&(current_range < 2.0))
				{
					man_cmd_vel_.linear.x = 0.0;
					ROS_INFO("[unicorn_statemachine] Loading complete!");
					state_ = current_state::IDLE;
					printUsage();
				}
				cmd_vel_pub_.publish(man_cmd_vel_);
				break;
			default:
				break;
		}
		
		break;

		case current_state::IDLE:
		move_base_active_ = 0;
		break;

		default:
		break;
	}
}

int UnicornState::sendGoal(const float& x, float y, float yaw)
{
	try {
	  float check_input=boost::lexical_cast<float>(x);
	} catch(boost::bad_lexical_cast &e) {
	  ROS_INFO("%s", e.what());
	  ROS_ERROR("[unicorn_statemachine] x is undefined");
	  state_ = current_state::IDLE;
	  return -1;
	}
	try {
	  float check_input=boost::lexical_cast<float>(y);
	} catch(boost::bad_lexical_cast &) {
	  ROS_ERROR("[unicorn_statemachine] y is undefined");
	  state_ = current_state::IDLE;
	  return -1;
	}
	try {
	  float check_input=boost::lexical_cast<float>(yaw);
	} catch(boost::bad_lexical_cast &) {
	  ROS_ERROR("[unicorn_statemachine] yaw is undefined");
	  state_ = current_state::IDLE;
	  return -1;
	}
    while(!move_base_clt_.waitForServer(ros::Duration(5.0)))
    {
    	ROS_INFO("Waiting for the move_base action server to come up");
  	}

  	move_base_msgs::MoveBaseGoal goal;
  	goal.target_pose.header.frame_id = "map";
  	goal.target_pose.header.stamp = ros::Time::now();
  	goal.target_pose.pose.position.x = x;
  	goal.target_pose.pose.position.y = y;
  	goal.target_pose.pose.orientation = tf::createQuaternionMsgFromYaw(yaw);

  	move_base_clt_.sendGoal(goal);

  	return 1;
}

void UnicornState::sendMoveCmd(float x, float y, float yaw)
{
	try {
	  float check_input=boost::lexical_cast<float>(x);
	} catch(boost::bad_lexical_cast &) {
	  ROS_ERROR("[unicorn_statemachine] x is undefined");
	  return;
	}
	try {
	  float check_input=boost::lexical_cast<float>(y);
	} catch(boost::bad_lexical_cast &) {
	  ROS_ERROR("[unicorn_statemachine] y is undefined");
	  return;
	}
	try {
	  float check_input=boost::lexical_cast<float>(yaw);
	} catch(boost::bad_lexical_cast &) {
	  ROS_ERROR("[unicorn_statemachine] yaw is undefined");
	  return;
	}
	while(!move_base_clt_.waitForServer(ros::Duration(5.0)))
    {
    	ROS_INFO("Waiting for the move_base action server to come up");
  	}

  	move_base_msgs::MoveBaseGoal goal;
  	goal.target_pose.header.frame_id = frame_id_.c_str();
  	goal.target_pose.header.stamp = ros::Time::now();
  	goal.target_pose.pose.position.x = x;
  	goal.target_pose.pose.position.y = y;
  	goal.target_pose.pose.orientation = tf::createQuaternionMsgFromYaw(yaw);

  	move_base_clt_.sendGoal(goal);
}

void UnicornState::cancelGoal()
{
	actionlib_msgs::GoalID cancel_all;
    move_base_cancel_pub_.publish(cancel_all);
    ROS_INFO("[unicorn_statemachine] Canceling move_base goal");
}