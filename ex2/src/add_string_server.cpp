#include "ros/ros.h"
#include "ex2/first_srv.h"  
#include <stdio.h>
#include <iostream>
#include <string.h>


bool service_request(ex2::first_srv::Request &req, ex2::first_srv::Response &res)
{
    ROS_INFO_STREAM(req.str1);
    ROS_INFO_STREAM(req.str2);
    res.ans = req.str1 + req.str2;
    ROS_INFO_STREAM(res.ans);
    return true;
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "add_string_server");
    ros::NodeHandle n;
    ros::ServiceServer service = n.advertiseService("string_service", service_request);
    ros::spin();

    return 0;

}
