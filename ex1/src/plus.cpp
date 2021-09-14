#include <ros/ros.h>
#include <geometry_msgs/Twist.h> // For geometry_msgs::Twist
#include <ex1/my_msg.h>
#include <stdlib.h> // For rand() and RAND_MAX
#include <iostream>

int main ( int argc, char** argv ) 
{
	// Initialize the ROS system and become a node .
	ros::init ( argc, argv, "plus" ) ;
	ros::NodeHandle nh ;
	ex1::my_msg msg;

	// Create a publisher obj ect .
	ros::Publisher pub = nh.advertise <ex1::my_msg>("listener", 1000) ;

	// Seed the random number generator .
	//srand (time(0));

	// Loop at 2Hz until the node is shut down.
	ros::Rate loop_rate(1);
	while ( ros::ok () ) 
	{
		// Create and fill in the message . The other four
		// fields , which are ignored by turtl esim , default to 0.
		msg.x = 6;
		msg.y = 5;
		msg.add = msg.x+msg.y;
		msg.dec = msg.x-msg.y;
		msg.mul = msg.x*msg.y;
		msg.div = msg.x/msg.y;

		// Publish the message .
		pub.publish ( msg ) ;

		// Send a message to rosout with the details .
		ROS_INFO_STREAM( "Arithmetic of x and y :"
		<< " x= " << msg.x
		<< " y= " << msg.y 
		<< "   x+y= " << msg.add 
		<< "  x-y= " << msg.dec
		<< "  x*y= " << msg.mul
		<< "  x/y= " << msg.div ) ;

		// Wait untilit's time for another iteration .
		loop_rate.sleep();
	}
}
