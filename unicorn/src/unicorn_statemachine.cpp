#include <unicorn/unicorn_statemachine.h>

int main(int argc, char **argv)
{
	ros::init(argc, argv, "unicorn_statemachine");
	UnicornState statemachine;
	statemachine.printUsage();
	ros::Rate r(50);
	while(ros::ok())
	{
	  // return 0;
      statemachine.active();
	  ros::spinOnce();
	  r.sleep();
	}
	return 0;
}

UnicornState::UnicornState() 
: move_base_clt_("move_base", true)
{
  bool run_global_loc;
  std::string odom_topic;
  n_.getParam("global_local", run_global_loc);
  if (run_global_loc)
  {
    globalLocalization();
  }

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

  state_ = current_state::MANUAL;
  loading_state_ = current_state::ALIGNING;
}
void UnicornState::globalLocalization()
{
  std_srvs::Empty srv;
  ros::service::waitForService("/global_localization", -1);

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
    	std::cout << "Target x: "; std::cin >> x;
    	std::cout << "Target y: "; std::cin >> y;
    	std::cout << "Target yaw: "; std::cin >> yaw;
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
  	state_ = current_state::MANUAL;
  	man_cmd_vel_.angular.z = 0;
	man_cmd_vel_.linear.x = 0;
  	printUsage();
  }
  else if (c == '4')
  {
  	state_ = current_state::LOADING;
  	man_cmd_vel_.angular.z = 0;
	man_cmd_vel_.linear.x = 0;
	target_yaw_ = current_yaw_ + M_PI;
	if (target_yaw_ > M_PI)
	{
		target_yaw_ -= 2*M_PI;
	}
  	printUsage();
  }
  else if (c == '5')
  {
   	std::cout << "Target x: "; std::cin >> x;
   	std::cout << "Target y: "; std::cin >> y;
   	std::cout << "Target yaw: "; std::cin >> yaw;
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
	x_vel_ = msg.twist.twist.linear.x;
}

void UnicornState::active()
{
	int c = getCharacter();
	processKey(c);

	
	switch(state_)
	{
		case current_state::AUTONOMOUS:
	  	if(move_base_clt_.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
	  	{
	    	ROS_INFO("[unicorn_statemachine] Goal reached");
	    	state_ = current_state::IDLE;
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
		std::cout << "err: " << std::abs(target_yaw_ - current_yaw_) << std::endl;
		switch(loading_state_)
		{
			/* Rotates the machine 180 degrees relative to current position 
			* TODO: Rotate to align with current heading of garbage disposal */
			case current_state::ALIGNING:
				if (std::abs(target_yaw_ - current_yaw_) > 0.05)
				{
					if (std::abs(target_yaw_ - current_yaw_) > 0.3)
					{
						man_cmd_vel_.angular.z = sgn(target_yaw_ - current_yaw_)*MAX_ANGULAR_VEL;
					}
					else
					{
						man_cmd_vel_.angular.z = sgn(target_yaw_ - current_yaw_)*0.1;
					}
				}
				else
				{
					man_cmd_vel_.angular.z = 0;
					loading_state_ = current_state::ENTERING;
					printUsage();
				}
				break;
			/* Checks a flag when machine has started moving 
			*  Stops the machine when wheels moves to slow
			*TODO: Wait for signal to exit the garbage disposal
			*TODO: Use range sensors to stop at correct position instead */
			case current_state::ENTERING:
				man_cmd_vel_.angular.z = 0;
				ROS_INFO("vel: %f", std::abs(x_vel_));
				if (std::abs(x_vel_) > 0.05)
				{
					flag = 1;
				}
				if (flag == 1 && std::abs(x_vel_) < 0.05)
				{
					man_cmd_vel_.angular.z = 0;
					man_cmd_vel_.linear.x = 0;
					state_ = current_state::IDLE;
					loading_state_ = current_state::ALIGNING;
					printUsage();
				}
				else if(flag == 0)
				{
					man_cmd_vel_.linear.x = -0.13;
				}
				break;

			case current_state::EXITING:
				break;
			default:
				break;
		}
		cmd_vel_pub_.publish(man_cmd_vel_);
		break;

		case current_state::IDLE:
		break;

		default:
		break;
	}
}

void UnicornState::sendGoal(float x, float y, float yaw)
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
  	goal.target_pose.header.frame_id = "map";
  	goal.target_pose.header.stamp = ros::Time::now();
  	goal.target_pose.pose.position.x = x;
  	goal.target_pose.pose.position.y = y;
  	goal.target_pose.pose.orientation = tf::createQuaternionMsgFromYaw(yaw);

  	move_base_clt_.sendGoal(goal);

  	// move_base_clt_.waitForResult();

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