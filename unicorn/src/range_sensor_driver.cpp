#include <unicorn/range_sensor_driver.h>

int main(int argc, char **argv)
{
	ros::init(argc, argv, "range_sensor_driver");
	RangeDriver range_driver;
	ros::Rate r(100);
	while(ros::ok())
	{
	  range_driver.readLine();
      range_driver.publishData();
	  ros::spinOnce();
	  r.sleep();
	}
	return 0;
}

RangeSensor::RangeSensor(std::string sensor_topic)
: TOPIC(sensor_topic)
{
	range_pub_ = n_.advertise<sensor_msgs::Range>(TOPIC.c_str(), 0, this);
	range_msg_.radiation_type = sensor_msgs::Range::ULTRASOUND;
	range_msg_.min_range = 0.03;
	range_msg_.max_range = 4.0;
	range_msg_.field_of_view = 0;
}

void RangeSensor::setRange(float range)
{
	range_msg_.header.stamp = ros::Time::now();
	range_msg_.range = range;
}

void RangeSensor::publishRange()
{	
	range_pub_.publish(range_msg_);
}

RangeDriver::RangeDriver()
{
	std::string SERIAL_PORT;
	if(n_.getParam("serial_port", SERIAL_PORT))
	{
		SERIAL_PORT = SERIAL_PORT;
	}
	else
	{
		SERIAL_PORT = "/dev/ttyUSB0";
	}
	file_.open(SERIAL_PORT.c_str());
	if ( (file_.rdstate() & std::ifstream::failbit ) != 0 )
	{
		ROS_ERROR("[range_driver] Failed to find serial port!");
  		ros::shutdown();
	}
	std::vector<std::string> range_name_list;
    n_.getParam("range_sensor_list", range_name_list);
    if (range_name_list.size() > 0)
    {
    	for (int i = 0; i < range_name_list.size(); ++i)
    	{
    		range_sensor_list_.push_back(new RangeSensor(std::string("/ultrasonic_")+range_name_list[i]));
    	}
    }
    else
    {
    	ROS_WARN("[range_driver] No list of range sensors specified (range_sensor_list: [s1,s2,s3,...,sn])");
    	if (file_ >> range_data_)
    	{
    		int i = 0, index = 0;
	    	while(index != std::string::npos)
	    	{
	    		index = range_data_.find_first_of(':', index+1);
	    		range_sensor_list_.push_back(new RangeSensor(std::string("/ultrasonic_")+boost::lexical_cast<std::string>(i)));
	    		i++;
	    	}
    	}
    	else
    	{
    		ROS_ERROR("[range_driver] Failed to read from serial port!");
    		ros::shutdown();
    	}
    	
    }
}
RangeDriver::~RangeDriver()
{
	file_.close();
}
void RangeDriver::readLine()
{
	if (file_ >> range_data_)
	{
		int index = 0;
		for (int i = 0; i < range_sensor_list_.size(); ++i)
		{
			index = range_data_.find_first_of(':', index+1);
			range_sensor_list_[i]->setRange(boost::lexical_cast<float>(range_data_.substr(index,3)));
		}
	}
}

void RangeDriver::publishData()
{
	for (int i = 0; i < range_sensor_list_.size(); ++i)
	{
		range_sensor_list_[i]->publishRange();
	}
}