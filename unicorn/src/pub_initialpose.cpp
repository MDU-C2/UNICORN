#include <unicorn/pub_initialpose.h>

int main(int argc, char **argv)
{
	ros::init(argc, argv, "initialpose_publisher");
	PubInitialPose pub_pose;
	ros::Rate r(1);
	while(ros::ok())
	{
		pub_pose.publishPose();
		ros::spinOnce();
	}
	return 0;
}

PubInitialPose::PubInitialPose()
{
	init_pose_pub_ = n_.advertise<geometry_msgs::PoseWithCovarianceStamped>("initialpose", 0, this);
	init_pose_srv_ = n_.advertiseService("initPose", &PubInitialPose::poseServiceCallback, this);

	pose_.position.x = 0;
	pose_.position.y = 0;
	pose_.position.z = 0;
	pose_.orientation.x = 0;
	pose_.orientation.y = 0;
	pose_.orientation.z = 0;
	pose_.orientation.w = 1;
	
	for (int i = 0; i < covariance_.size(); ++i)
	{
		covariance_[i] = 0.01;
	}

	pose_with_cov_.covariance = covariance_;
	pose_with_cov_.pose = pose_;

	initialpose_.header.frame_id = "initialpose";
	initialpose_.header.stamp = ros::Time::now();
	initialpose_.pose = pose_with_cov_;
}

PubInitialPose::~PubInitialPose()
{

}

void PubInitialPose::publishPose()
{	
	init_pose_pub_.publish(initialpose_);
}

bool PubInitialPose::poseServiceCallback(unicorn::init_pose::Request& req, unicorn::init_pose::Response& res)
{
	pose_.position.x = req.x;
	pose_.position.y = req.y;
	pose_.position.z = req.z;
	pose_.orientation = tf::createQuaternionMsgFromRollPitchYaw(req.roll, req.pitch, req.yaw);
	pose_with_cov_.pose = pose_;
	initialpose_.header.stamp = ros::Time::now();
	initialpose_.pose = pose_with_cov_;
	return true;
}