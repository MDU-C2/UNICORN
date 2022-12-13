/*! \mainpage Code documentation of the Command Interface Node(CIN). The CIN can run stand-alone from the remainder of the robot's systems. The purpose of the CIN is to manage
 * user inputs from different sources. Currently, only input via the console interface is functioning, but there's a started implementation for recieving web commands. 
 *
 */

#ifndef UNICORN_CMD_INTERFACE_H
#define UNICORN_CMD_INTERFACE_H
/* ROS */
#include <ros/ros.h>
#include <ros/master.h>
#include <std_msgs/Bool.h>
#include <std_msgs/Int32.h>
#include <std_msgs/String.h>

/* C / C++ */
#include <string>
#include <iostream>
#include <termios.h>
#include <cmath>
#include <boost/lexical_cast.hpp>
/*JSON*/
#include <nlohmann/json.hpp>

/*User-defined messages*/
#include "unicorn_cmd_interface/command.h"

// External library to deserialise commands from the web interface
using json = nlohmann::json;

// Defines
#define STATE_IDLE 0
#define STATE_NAVIGATING 1
#define STATE_LIFT 2
#define STATE_ALIGNING 3
#define STATE_REVERSING 4

typedef struct command
{
    //command() : state(-1), param1(-1.0), param2(-1.0), param3(-1.0) {} //! Instantiates a command to default values
    int state; //!< New robot state to transition to 
    float param1; //!< Additional optional parameter if needed
    float param2; //!< Additional optional parameter if needed
    float param3; //!< Additional optional parameter if needed
} Command;

/**
 *   The Command Interface Node(CIN) is a stand-alone node which manages and forwards any commands to the robot.  
 */

class UNICORNCmdInterface
{
public:
    /*Methods*/
    /**
     * @brief Default constructor
     * 
     * @param node handle to the executing node
    */
    UNICORNCmdInterface(ros::NodeHandle node);
    /**
     * @brief Default de-constructor
    */
    ~UNICORNCmdInterface();
    /**
     * @brief Print the user interface to console
    */

    void displayUserInterface();
    /**
     * @brief Checks for user input
    */
    int getUserInput();
    /**
     * @brief processes user input and creates a command object out of it. 
     * 
     * @param choice user input
    */
    Command processUserInput(int choice);
    /**
     * @brief publishes a command to the "commands" topic read by UNICORN's state machine node
     * 
     * @param cmd command to be published to UNICORN's state machine node
    */
    int sendUNICORNCommand(Command cmd);

    /**
     * @brief method which takes absolute coordinates from the user and generates a command object from them.
     * 
    */
    Command setGoalCommand();

protected:
private:
    /*Members*/
    ros::NodeHandle n_; //!< reference to the executing nodes handle
    
    ros::Publisher unicorn_cmd_pub_; //!< publishes commands to the main state machine
    
    ros::Subscriber unicorn_web_cmd_sub_; //!< listens after web commands
    
    ros::Subscriber unicorn_state_sub_; //!< listens after robot state transitions
    
    std::vector<std::string> state_strings_vec_ = {"IDLE", "NAVIGATING", "LIFT", "ALIGNING", "REVERSING"}; //!<  strings representations of all robot states

    int current_state_; //!< the current state of the robot

    /*Methods*/
    /**
     * @brief Callback method which captures messages issued via UNICORN's web interface. 
     * 
     * @param web_cmd_msg string containing command and parameters in JSON format sent via the web interface
    */
    void webCommandCallback(std_msgs::String web_cmd_msg);
    /**
     * @brief Serialises web commands into JSON objects and extracts command and params into a new command object. 
     * 
     * @param web_cmd deserialised JSON string extracted from the web command message
    */
    Command parseWebCommand(std::string web_cmd);
    /**
     * @brief Updates the user interface and the "current state"-member with the current robot state. 
     * 
     * @param msg ROS message containing the integer representation of the current robot state
    */
    void stateUpdateCallback(std_msgs::Int32 msg);

    /**
     * @brief returns a string representation of the passed state parameter
     * 
     * @param state the integer representation of a robot state 
    */
    std::string getStateString(int state);
};
#endif
