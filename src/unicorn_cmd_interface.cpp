#include <ros/ros.h>
#include "unicorn_cmd_interface/unicorn_cmd_inteface.h"

int main(int argc, char **argv)
{
    ros::WallDuration timeoutDur(5);
    ros::master::setRetryTimeout(timeoutDur);
    ros::init(argc, argv, "unicorn_cmd_interface");
    ros::NodeHandle n_;
    UNICORNCmdInterface cmd_interface(n_);
    ros::Rate rate(1);
    int choice, commandStatus;
    Command cmd;
    
    cmd_interface.displayUserInterface();
    while (true)
    {
        choice = cmd_interface.getUserInput();
        if (choice > -1)
        {
            cmd = cmd_interface.processUserInput(choice);
        }
        if (cmd.state > -1)
        {
	    commandStatus = cmd_interface.sendUNICORNCommand(cmd);
            if(commandStatus  == -1)
            {
		        ROS_INFO("%d", commandStatus);
                ROS_INFO("[Unicorn User Interface] Exiting command node.");
                return -1;
            }
            cmd.state = -1;
            choice = -1;
        }
        ros::spinOnce();
        rate.sleep();
    }
    return -1;
}

UNICORNCmdInterface::UNICORNCmdInterface(ros::NodeHandle node)
{
    n_ = node;
    unicorn_cmd_pub_ = n_.advertise<unicorn_cmd_interface::command>("commands", 0);
    unicorn_web_cmd_sub_ = n_.subscribe("web_commands", 0, &UNICORNCmdInterface::webCommandCallback, this);
    unicorn_state_sub_ = n_.subscribe("TX2_unicorn_state", 0, &UNICORNCmdInterface::stateUpdateCallback, this);
}

UNICORNCmdInterface::~UNICORNCmdInterface()
{
}

void UNICORNCmdInterface::displayUserInterface()
{
    std::cout << "------------------- UNICORN CLI -------------------" << std::endl
              << "1: IDLE mode 2: Send Goal 3: Activate LIFT 4: Align with bin 5: Reverse to bin 6: Print current state" << std::endl
              << "H: Pause execution" << std::endl; 
    return;
}

int UNICORNCmdInterface::getUserInput()
{
    static struct termios oldt, newt;
    tcgetattr(STDIN_FILENO, &oldt); // save old settings
    newt = oldt;
    newt.c_lflag &= ~(ICANON); // disable buffering
    newt.c_cc[VMIN] = 0;
    newt.c_cc[VTIME] = 0;
    tcsetattr(STDIN_FILENO, TCSANOW, &newt); // apply new settings

    int c = getchar(); // read character (non-blocking)
    if(c == '\n' || c == '\r' || c == '\0')
        return -1;
    tcsetattr(STDIN_FILENO, TCSANOW, &oldt); // restore old settings
    return c;
}

Command UNICORNCmdInterface::setGoalCommand()
{
    system("clear");
    Command newGoalCmd;
    newGoalCmd.state = STATE_NAVIGATING;
    std::cout << "<-- Please enter goal coordinates -->" << std::endl;
    std::cout << "X:";
    std::cin >> newGoalCmd.param1;
    std::cout << std::endl << "Y:";
    std::cin >> newGoalCmd.param2;
    std::cout << std::endl << "Yaw:";
    std::cin >> newGoalCmd.param3;
    std::cin.clear();
    std::cin.ignore(INT_MAX, '\n');
    return newGoalCmd;
}

Command UNICORNCmdInterface::processUserInput(int choice)
{
    Command cmd;
    switch (choice)
    {
    case '1':
        cmd.state = STATE_IDLE;
        break;

    case '2':
        cmd = setGoalCommand();
        break;

    case '3':
        cmd.state = STATE_LIFT;
        break;

    case '4':
        cmd.state = STATE_ALIGNING;
        break;

    case '5':
        cmd.state = STATE_REVERSING;
        break;

    case 'H':
        system("clear");
        ROS_INFO("[Unicorn Command Interface] Exiting...");
        exit(EXIT_SUCCESS);
        break;

    default:
        ROS_WARN("[Unicorn Command Interface] Invalid input");
        displayUserInterface();
        break;
    }
    //system("clear");

    return cmd;
}

int UNICORNCmdInterface::sendUNICORNCommand(Command cmd)
{
    unicorn_cmd_interface::command msg;
    ros::Rate(0.5);
    msg.state = cmd.state;
    msg.param1 = cmd.param1;
    msg.param2 = cmd.param2;
    msg.param3 = cmd.param3;
    for (size_t i = 0; i < 3 && !(ros::master::check()); i++)
    {
        if(i == 2)
        {
            ROS_ERROR("[Unicorn Command Interface] Could not reach ROS master command not published");
            return -1;
        }
    }
    unicorn_cmd_pub_.publish(msg);
    ROS_INFO("[Unicorn Command Interface] Published new command");
    displayUserInterface();
    return 0;
}

void UNICORNCmdInterface::webCommandCallback(std_msgs::String web_cmd_msg)
{
    Command unicorn_cmd = parseWebCommand(web_cmd_msg.data);
    ROS_INFO("[Unicorn Command Interface] New web command has been recieved");
    std::cout << unicorn_cmd.state << std::endl;

    // sendUNICORNCommand(unicorn_cmd);
}

Command UNICORNCmdInterface::parseWebCommand(std::string web_cmd)
{
    Command parsed_cmd;
    auto cmd_obj = json::parse(web_cmd);
    std::cout << cmd_obj["command"] << std::endl
              << cmd_obj["payload"] << std::endl;
    return parsed_cmd;
}

void UNICORNCmdInterface::stateUpdateCallback(std_msgs::Int32 msg)
{
    current_state_ = msg.data;
    ROS_INFO("[Unicorn Command Interface] State machine state updated to: %s", getStateString(msg.data).c_str());
}

std::string UNICORNCmdInterface::getStateString(int state)
{
    return state_strings_vec_[state];
}
