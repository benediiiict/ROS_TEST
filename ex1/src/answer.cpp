#include <ros/ros.h>
#include <turtlesim/Pose.h> // For geometry_msgs::Twist
#include <ex1/my_msg.h>
#include <stdio.h>
#include <iostream>

void Get_Number(const ex1::my_msg& msg)
{
    ROS_INFO_STREAM("The answer of x+y is : " << msg.add 
    <<" , The answer of x-y is :"<< msg.dec 
    <<" , The answer of x*y is :"<< msg.mul 
    <<" , The answer of x/y is :"<< msg.div);
}


int main ( int argc, char** argv ) 
{
	// Initialize the ROS system and become a node .
	ros::init ( argc, argv, "answer" ) ;
	ros::NodeHandle nh ;
	
    // Create a subscriber 
    ros::Subscriber sub = nh.subscribe("listener", 1000, &Get_Number);

    // Let ROS spin in this node
    ros::spin();
}


// not complete yet
