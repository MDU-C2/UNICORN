# The Command Interface Node(CIN) for the UNICORN project @ MDH 

This repository contains the source code which makes up the user interface for the robot Charlie. 

## Usage

To compile the CIN place the package folder into your catkin workspace's src folder and run the following command in the workspace's root
folder:

> catkin_make 

Once compiled execute the following commands to start using the CIN:

> rosrun unicorn_cmd_interface unicorn_cmd_interface

The commands that can be issued via the CIN is display in the terminal window from which it was started. For information concerning the 
source code please refer to reading the generated documentation on the package. 

## Web Interface Interaction 

Functionality to capture web commands from the web interface has been started but wasn't finished. To parse incoming web commandes, which are sent as JSON strings a library has been added from the following repo.:

> https://github.com/nlohmann/json

Frontend and backend source code for the web interface is found in the following two repositories.

[Frontend](https://github.com/kanaljen/rosreact) - Frontend made in React

[Backend](https://github.com/kanaljen/rossocketserver) - Backend made with NodeJS
