#ifndef LASER_SCAN_FILTER_H
#define LASER_SCAN_FILTER_H

#include <ros/ros.h>
#include <sensor_msgs/LaserScan.h>

/** @brief Class for the main laser filter node
*
*	Limits the angle of a laserscan topic "scan" and publishes
*	on topic based on rosparam "scan_topic".	
*/
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
	double lower_angle_;	/**< lower angular limit of the laserscan*/
	double upper_angle_;	/**< upper angular limit of the laserscan*/
};

#endif