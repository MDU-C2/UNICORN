#!/bin/bash
rosbag record /odometry/filtered /zed/odom /tf /map /amcl_pose /zed/point_cloud/cloud_registered \
/ultrasonic_bl /ultrasonic_bml /ultrasonic_brm /ultrasonic_fl /ultrasonic_fml /ultrasonic_fmr /ultrasonic_fr /scan_filtered \
/cloud_filtered

