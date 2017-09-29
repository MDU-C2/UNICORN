#ifndef PUB_INITIALPOSE_H
#define PUB_INITIALPOSE_H

/* ROS */
#include <ros/ros.h>
#include <tf/tf.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>
#include <geometry_msgs/PoseWithCovariance.h>
#include <geometry_msgs/Pose.h>
#include <unicorn/init_pose.h>

class PubInitialPose
{
public:
	PubInitialPose();
	~PubInitialPose();
	void publishPose();
	bool poseServiceCallback(unicorn::init_pose::Request& req, unicorn::init_pose::Response& res);
private:
	ros::NodeHandle n_;
	ros::Publisher init_pose_pub_;
	ros::ServiceServer init_pose_srv_;
	geometry_msgs::PoseWithCovarianceStamped initialpose_;
	geometry_msgs::PoseWithCovariance pose_with_cov_;
	geometry_msgs::Pose pose_;
	boost::array<float, 36> covariance_;
};

#endif