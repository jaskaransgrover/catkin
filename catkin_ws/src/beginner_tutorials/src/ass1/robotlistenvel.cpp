#include "ros/ros.h"
#include "std_msgs/String.h"

/**
 * This tutorial demonstrates simple receipt of messages over the ROS system.
 */
// %Tag(CALLBACK)%
void chatterCallback(const std_msgs::String::ConstPtr& msg)
{
  ROS_INFO("I heard: [%s]", msg->data.c_str());
}
// %EndTag(CALLBACK)%

int main(int argc, char **argv)
{
  
  ros::init(argc, argv, "vellistener");

  ros::NodeHandle n;

  ros::Subscriber sub = n.subscribe("/turtle1/cmd_vel", 1000, chatterCallback);

  ros::spin();


  return 0;
}
