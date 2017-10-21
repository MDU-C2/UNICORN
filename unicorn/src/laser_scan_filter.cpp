#include <unicorn/laser_scan_filter.h>

int main(int argc, char** argv){
  ros::init(argc, argv, "laser_scan_publisher");
  ROS_INFO("Started laser filter");
  LaserFilter laser_filter;
  ros::Rate r(100.0);
  while(ros::ok())
  {
    laser_filter.publishScan();
    ros::spinOnce();
    r.sleep();
  }
}

LaserFilter::LaserFilter()
{
  scan_sub_ = n_.subscribe("/scan", 0, &LaserFilter::scanCallback, this);
  scan_pub_ = n_.advertise<sensor_msgs::LaserScan>("/scan_filtered", 0);
  if (n_.getParam("lower_angle", lower_angle_))
  {
    ROS_INFO("laser_filter: Lower angle threshold: %f", lower_angle_);
  }
  else
  {
    ROS_WARN("laser_filter: Lower angle threshold not set");
    lower_angle_ = -1.57;
  }
  if (n_.getParam("upper_angle", upper_angle_))
  {
    ROS_INFO("laser_filter: Upper angle threshold: %f", upper_angle_);
  }
  else
  {
    ROS_WARN("laser_filter: Upper angle threshold not set");
    upper_angle_ = 1.57;
  }
}

LaserFilter::~LaserFilter()
{

}

void LaserFilter::publishScan()
{
  scan_pub_.publish(scan_);
}

void LaserFilter::scanCallback(const sensor_msgs::LaserScan& input_scan)
{
  

  scan_.ranges.resize(input_scan.ranges.size());
  scan_.intensities.resize(input_scan.intensities.size());

  double start_angle = input_scan.angle_min;
  double current_angle = input_scan.angle_min;
  ros::Time start_time = input_scan.header.stamp;
  unsigned int count = 0;

  //loop through the scan and truncate the beginning and the end of the scan as necessary
  for (unsigned int i = 0; i < input_scan.ranges.size(); ++i)
  {
    //wait until we get to our desired starting angle
    if(start_angle < lower_angle_) 
    {
      start_angle += input_scan.angle_increment;
      current_angle += input_scan.angle_increment;
      start_time += ros::Duration(input_scan.time_increment);
    }
    else 
    {
      scan_.ranges[count] = input_scan.ranges[i];

      //make sure  that we don't update intensity data if its not available
      if (input_scan.intensities.size() > i)
        scan_.intensities[count] = input_scan.intensities[i];
        count++;
        //check if we need to break out of the loop, basically if the next increment will put us over the threshold
        if (current_angle + input_scan.angle_increment > upper_angle_) 
        {
          break;
        }
      current_angle += input_scan.angle_increment;
    }
  }
 
  

  //populate the LaserScan message
    scan_.header.frame_id = input_scan.header.frame_id;
    scan_.time_increment = input_scan.time_increment;
    scan_.angle_increment = input_scan.angle_increment;
    scan_.scan_time = input_scan.scan_time;
    scan_.range_min = input_scan.range_min;
    scan_.range_max = input_scan.range_max;
    scan_.header.stamp = start_time;
    scan_.angle_min = start_angle;
    scan_.angle_max = current_angle;
 
  scan_.ranges.resize(count);

  if (input_scan.intensities.size() >= count)
  {
    scan_.intensities.resize(count);
  }

  // ROS_DEBUG("Filtered out %d points from the laser scan.", (int)input_scan.ranges.size() - (int)count);
}