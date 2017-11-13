/** @file range_sensor_driver.h*/

#ifndef RANGE_SENSOR_DRIVER_H
#define RANGE_SENSOR_DRIVER_H

/* ROS */
#include <ros/ros.h>
#include <sensor_msgs/Range.h>

/* C / C++ */
#include <iostream>
#include <fstream>
#include <boost/lexical_cast.hpp>

/** @brief Class for one ultrasonic range sensor.
*
*	Use rosparam range_name_list to specify unique topic names
*	otherwhise each sensor publishes on /ultrasound_#.
*/
class RangeSensor
{
public:
	/** @brief Constructor to initialize publishers and messages.
	*
	*	Initializes limitations on the ultrasonic sensor such as max, min ranges view-angle.
	*/
	RangeSensor(std::string sensor_topic);
    void publishRange();
    /** @brief Set range and update timestamp. */
    void setRange(float range);
    const std::string TOPIC;
private:
	ros::NodeHandle n_;
	ros::Publisher range_pub_;
	sensor_msgs::Range range_msg_;	
};

/** @brief Class for main range sensor driver node.
*
*	rosparam serial_port specifies which port to read from
* 	where default is /dev/ttyUSB0.
*
*	This node assumes the following message format: "val1:52 val2:25 val3:33 ... valN:xx"
*/
class RangeDriver
{
public:
	RangeDriver();
	~RangeDriver();
	void readLine();
	void publishData();
private:
	ros::NodeHandle n_;
	std::string SERIAL_PORT;
	std::vector<RangeSensor*> range_sensor_list_; /**< List of active range sensors. */
	std::string range_data_; 					  /**< Serial data buffer. */
    std::fstream file_;
};
#endif