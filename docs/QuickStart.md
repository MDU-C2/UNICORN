# Unicorn Quick Start Guide

### Materials

- Jetson TX1
- LMS111
- Zed Camera
- Usb 3.0 hub
- Power Supply?
    + Extension cord
- Husqvarna Automower

### Connection

Make sure that you are able to create an ssh tunnel between your host computer and the target jetsontx1.

> ssh nvidia@10.42.0.1

If not, check if you are connected to unicorn-hotspot and try again.

### Software

Make sure that the jetson tx1 is running the latest branch, either using github which requires an internet connection:

> roscd unicorn && git fetch
> git remote show origin
> git checkout <correct-branch>

Or by copying files from your host computer:

> cd ~/catkin_ws/src
> scp -r UNICORN nvidia@10.42.0.1:/home/nvidia/catkin_ws/src

Remember to build the code if you update it:

> cd ~/catkin_ws && catkin_make_

### Run

- Make two terminals and ssh from both to the jetson tx1. 
- In the first one run:

> roslaunch unicorn main_target.launch

- In the second:

> rosrun am_driver hrp_teleop.py

- Make another terminal and configure `ROS_IP` and `ROS_MASTER_URI` to enable reading topics from the jetson tx1.

> export ROS_IP=$YOUR_IP
> export ROS_MASTER_URI=http://10.42.0.1:11311

### Start automower

- Begin by opening the hatch and input the pin: `1111`
- Enter settings and hold `7` and `9` until a new options appears.
    - Press the wrench then goto special settings -> line something? and press the down arrow to disable.
- Start by moving back to the main menu
    + Press start and close the hatch


### Troubleshooting
Here are some common errors and how to fix them:

`FATAL_ERROR`
Shown by hrp_teleop node and indicates that the automower is very sad. Open up the hatch and read the error message to proceed. It usually just want someone to listen to its problems.

`STOPPED`
Shown by hrp_teleop node and indicates that the automower is not started. If you are sure that it has started correctly try to restart the teleop node instead.

`SERIAL PORT DOESN'T EXIST`
Shown by am_driver_safe_node started by main_target.launch and indicates that the jetson tx1 cannot find the automower. Make sure that the usb cable is plugged in (hehe) and that ACM is listed under devices.

>   ls /dev/ttyACM*

Compare the number behind ACM with the number in `main_target.launch` and edit if needed.

`ROSTOPIC ECHO /SCAN DOES NOT WORK`
Make sure that the variables `ROS_IP` and `ROS_MASTER_URI` are set correctly on your host computer.

>  echo $ROS_IP && echo $ROS_MASTER_URI

Otherwise make sure that the ip address of the LMS111 is set correctly.

>   nmap -sP 192.168.0.2/24

May take a few seconds. If it doesn't output anything try to investigate if our link to eth0 is up using:

>   ifconfig

And if it is down set it up using:

>   sudo ip link set eth0 up

Then repeat the nmap and if you find the ip address (typically 192.168.0.100) then compare it to the one set in `main_target.launch` under "Start the LMS111...".

### Run simulation

> roslaunch unicorn unicorn_sim.launch

`Note:` Keep in mind that changing the model used may require you to comment out the line `<node name="am_unicorn_interface" pkg="unicorn" type="am_unicorn_interface" output="screen"/>` if the model is forward driven.



