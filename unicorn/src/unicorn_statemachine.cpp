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
{
  bool run_global_loc;
  std::string odom_topic;
  n_.getParam("global_local", run_global_loc);
  if (run_global_loc)
  {
    globalLocalization();
  }

  if(n_.getParam("max_angular_vel", MAX_ANGULAR_VEL))
  {
  	ROS_INFO("MAX_ANGULAR_VEL: %f", MAX_ANGULAR_VEL);
  }
  else
  {
  	MAX_ANGULAR_VEL = 0.5;
  	ROS_INFO("MAX_LINEAR_VEL: %f", MAX_LINEAR_VEL);
  }

  if(n_.getParam("max_linear_vel", MAX_LINEAR_VEL))
  {
  	ROS_INFO("MAX_LINEAR_VEL: %f", MAX_LINEAR_VEL);
  }
  else
  {
  	MAX_LINEAR_VEL = 0.3;
  	ROS_INFO("MAX_LINEAR_VEL: %f", MAX_LINEAR_VEL);
  }

  if (n_.getParam("odometry_topic", odom_topic))
  {
  	/* code */
  }
  else
  {
  	odom_topic = "odom";
  }

  move_base_cancel_pub_ = n_.advertise<actionlib_msgs::GoalID>("/move_base/cancel", 0);
  amcl_global_clt_ = n_.serviceClient<std_srvs::Empty>("/global_localization");
  cmd_vel_pub_ = n_.advertise<geometry_msgs::Twist>("/unicorn/cmd_vel", 0);
  odom_sub_ = n_.subscribe(odom_topic.c_str(), 0, &UnicornState::odomCallback, this);

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

void UnicornState::processKey(int c)
{
  if (c == 'h')
  {
    ROS_INFO("Canceling move_base goal");
    actionlib_msgs::GoalID cancel_all;
    move_base_cancel_pub_.publish(cancel_all);
  }
  else if (c == 'l')
  {
    globalLocalization();
  }
  else if (c == '1')
  {
  	ROS_INFO("Pressed 1");
    state = current_state::AUTONOMOUS;
    printUsage();
  	if (state != current_state::MANUAL)
  	{
  		ROS_ERROR("Manual drive is active!");
  	}
  }
  else if (c == '2')
  {
  	ROS_INFO("Pressed 2");
    state = current_state::IDLE;
    printUsage();
  }
  else if (c == '3')
  {
  	state = current_state::MANUAL;
  	man_cmd_vel_.angular.z = 0;
	man_cmd_vel_.linear.x = 0;
  	ROS_INFO("Pressed 3");
  	printUsage();
  }
  else if (c == '4')
  {
  	state = current_state::LOADING;
  	man_cmd_vel_.angular.z = 0;
	man_cmd_vel_.linear.x = 0;
	target_yaw_ = current_yaw_ + M_PI;
	if (target_yaw_ > M_PI)
	{
		target_yaw_ -= 2*M_PI;
	}
  	ROS_INFO("Pressed 3");
  	printUsage();
  }
}

void UnicornState::printUsage()
{
	std::cout << "------------------- State: " << current_state::IDLE << "-------------------" << std::endl 
	<< "1: Specify new goal 2: Idle mode 3: Manual control" << std::endl
	<< "H: Cancel current goal  L: Init global localization" << std::endl;
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

	
	switch(state)
	{
		case current_state::AUTONOMOUS:
		break;

		case current_state::MANUAL:
		if (c == 'a')
		{
			ROS_INFO("Pressed a");
			man_cmd_vel_.angular.z = MAX_ANGULAR_VEL;
		}
		else if (c == 'w')
		{
			ROS_INFO("Pressed w");
			man_cmd_vel_.linear.x = MAX_LINEAR_VEL;
		}
		else if (c == 'd')
		{
			ROS_INFO("Pressed d");
			man_cmd_vel_.angular.z = -MAX_ANGULAR_VEL;
		}
		else if (c == 's')
		{
			ROS_INFO("Pressed s");
			man_cmd_vel_.angular.z = 0;
			man_cmd_vel_.linear.x = 0;
		}
		else if (c == 'x')
		{
			ROS_INFO("Pressed x");
			man_cmd_vel_.linear.x = -MAX_LINEAR_VEL;
		}
		cmd_vel_pub_.publish(man_cmd_vel_);
		break;

		case current_state::LOADING:
		std::cout << "err: " << std::abs(target_yaw_ - current_yaw_) << std::endl;
		switch(loading_state)
		{
			case current_state::ALIGNING:
				if (std::abs(target_yaw_ - current_yaw_) > 0.05)
				{
					if (std::abs(target_yaw_ - current_yaw_) > 0.3)
					{
						man_cmd_vel_.angular.z = sgn(target_yaw_ - current_yaw_)*0.4;
					}
					else
					{
						man_cmd_vel_.angular.z = sgn(target_yaw_ - current_yaw_)*0.1;
					}
				}
				else
				{
					man_cmd_vel_.angular.z = 0;
					loading_state = current_state::ENTERING;
				}
				break;

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
					state = current_state::IDLE;
				}
				else if(flag == 0)
				{
					man_cmd_vel_.linear.x = -0.1;
				}
				break;

			case current_state::EXITING:
				break;
			default:
				loading_state = current_state::ALIGNING;
		}
		cmd_vel_pub_.publish(man_cmd_vel_);
		break;

		case current_state::IDLE:
		break;

		default:
		break;
	}
}