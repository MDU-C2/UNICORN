#ifndef LASER_SCAN_FILTER_H
#define LASER_SCAN_FILTER_H

#include <ros/ros.h>
#include <sensor_msgs/LaserScan.h>

class LaserFilter
{
public:
	LaserFilter();
	~LaserFilter();
	void scanCallback(const sensor_msgs::LaserScan& input_scan);
	void publishScan();
private:
	ros::NodeHandle n_;
	ros::Subscriber scan_sub_;
	ros::Publisher scan_pub_;
	sensor_msgs::LaserScan scan_;
	double lower_angle_;
	double upper_angle_;
};

#endif