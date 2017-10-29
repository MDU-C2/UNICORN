#include <unicorn/am_unicorn_interface.h>

int main(int argc, char** argv){
  ros::init(argc, argv, "am_unicorn_interface");
  ROS_INFO("Started automower to unicorn interface");
  AmUnicornInterface am_unicorn_interface;
  ros::Rate r(20.0);
  while(ros::ok())
  {
    am_unicorn_interface.publishCmd();
    ros::spinOnce();
    r.sleep();
  }
}

AmUnicornInterface::AmUnicornInterface()
{
  cmd_vel_sub_ = n_.subscribe("/unicorn/cmd_vel", 0, &AmUnicornInterface::cmdVelCallback, this);
  unicorn_cmd_vel_pub_ = n_.advertise<geometry_msgs::Twist>("cmd_vel", 0);
  amcl_global_clt_ = n_.serviceClient<std_srvs::Empty>("/global_localization");
  bool run_global_loc;
  n_.getParam("global_local", run_global_loc);
  if (run_global_loc)
  {
    globalLocalization();
  }
}

void AmUnicornInterface::cmdVelCallback(const geometry_msgs::Twist& cmd_vel)
{
  unicorn_cmd_vel_ = cmd_vel;
  unicorn_cmd_vel_.linear.x = -unicorn_cmd_vel_.linear.x;
  unicorn_cmd_vel_.linear.z = -unicorn_cmd_vel_.linear.z;
}

void AmUnicornInterface::publishCmd()
{
  unicorn_cmd_vel_pub_.publish(unicorn_cmd_vel_);
}

void AmUnicornInterface::globalLocalization()
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

