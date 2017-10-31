# zed-ros-wrapper changes

Added a function called `publishPointCloudDivided` in the zed_wrapper_nodelet.cpp this does the same thing as `publishPointCloud` but skips a number of specified points between each used point instead of creating a point cloud containing every point.

This makes it so that the number of points in /point_cloud/cloud_registered can be changed depending on your needs. It also reduces the proccessing time needed to convert from the original point cloud to a rosmsg which makes the entire system faster.

To use this code replace the original zed_wrapper_nodelet.cpp in catkin_ws/src/zed-ros-wrapper/src with the modified version in this folder.
Then run 

> catkin_make

in catkin_ws and it should work.

I also added some parameters that can be specified in the launch file for the camera seen below.

`<param name="point_width_inc"  value="2" />`

`<param name="point_height_inc"  value="2" />`

The values can be anything from 1 and up. They specify how many points should be skipped in the original data when converting to rosmsg.
If the value is zero the original function `publishPointCloud` is used instead of `publishPointCloudDivided` and no points are skipped.












