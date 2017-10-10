#ifndef AM_UNICORN_INTERFACE_H
#define AM_UNICORN_INTERFACE_H
#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <tf/tf.h>
#include <nav_msgs/Odometry.h>
#include <iostream>

class AmUnicornInterface
{
public:
	AmUnicornInterface();
	void cmdVelCallback(const geometry_msgs::Twist& cmd_vel);
	void publishCmd();
private:
	ros::NodeHandle n_;
	geometry_msgs::Twist unicorn_cmd_vel_;
	ros::Subscriber cmd_vel_sub_;
	ros::Publisher unicorn_cmd_vel_pub_;
};
#endif