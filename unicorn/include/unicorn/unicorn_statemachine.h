#ifndef UNICORN_STATEMACHINE_H
#define UNICORN_STATEMACHINE_H

/* ROS */
#include <ros/ros.h>
#include <tf/transform_listener.h>
#include <std_srvs/Empty.h>
#include <actionlib_msgs/GoalID.h>
#include <geometry_msgs/Twist.h>
#include <nav_msgs/Odometry.h>
#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>

/* C / C++ */
#include <iostream>
#include <termios.h>
#include <cmath>

typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;

template <typename T> int sgn(T val) {
    return (T(0) < val) - (val < T(0));
}

namespace current_state
{
	enum
	{
		AUTONOMOUS,
		MANUAL,
		LOADING,
		IDLE,
		ALIGNING,
		EXITING,
		ENTERING
	};
}

class UnicornState
{
public:
	UnicornState();
	void globalLocalization();
	int getCharacter();
	void processKey(int c);
	void printUsage();
	void active();
	std::string stateToString(int state);
	void odomCallback(const nav_msgs::Odometry& msg);
	void sendGoal(float x, float y, float yaw);
	void sendMoveCmd(float x, float y, float yaw);
	void cancelGoal();
private:
	ros::NodeHandle n_;
	ros::Publisher cmd_vel_pub_;
	ros::ServiceClient amcl_global_clt_;
	ros::Publisher move_base_cancel_pub_;
	ros::Subscriber odom_sub_;
	geometry_msgs::Twist man_cmd_vel_;
	MoveBaseClient move_base_clt_;
	std::string frame_id_;
	tf::StampedTransform map_to_base_transform_;
	tf::TransformListener tf_listener_;

	int state_, flag, loading_state_;
	double current_yaw_, target_yaw_;
	double x_vel_;
	double MAX_ANGULAR_VEL;
	double MAX_LINEAR_VEL;
};

#endif