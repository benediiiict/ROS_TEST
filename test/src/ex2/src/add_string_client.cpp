#include "ros/ros.h"
#include "ex2/first_srv.h"  
#include <stdio.h>
#include <iostream>
#include <string>


int main(int argc, char **argv)
{
    ros::init(argc, argv,"add_string_client");
    ros::NodeHandle n;

    ros::ServiceClient client = n.serviceClient<ex2::first_srv>("string_service");

    ex2::first_srv srv;
    srv.request.str1 = argv[1];
    srv.request.str2 = argv[2];
    ROS_INFO_STREAM(srv.request.str1);
    ROS_INFO_STREAM(srv.request.str2);

    if(client.call(srv))
        ROS_INFO("Finish send data");
    else
    {
        ROS_ERROR("Failed to call service");
        return 1;
    }
    
    return 0;

}
