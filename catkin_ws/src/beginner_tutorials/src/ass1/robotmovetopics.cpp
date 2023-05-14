#include "ros/ros.h"
#include "geometry_msgs/Twist.h"
#include <sstream>

int main(int argc, char **argv)
{
  ros::init(argc, argv, "sendvelocitycommands");
  ros::NodeHandle n;
  ros::Publisher vel_pub = n.advertise<geometry_msgs::Twist>("/turtle1/cmd_vel", 1000);
  ros::Rate loop_rate(10);
  int count = 0;
  while (ros::ok())
  {
    geometry_msgs::Twist msg;

    std::stringstream ss;
    ss << "hello world " << count;
    msg.linear.x = 1.0;
    msg.angular.x = 0.0;
    msg.linear.y = 0.0;
    msg.angular.y = 0.0;
    msg.linear.z = 0.0;
    msg.angular.z = 0.0;
    vel_pub.publish(msg);
    ros::spinOnce();
    loop_rate.sleep();
    ++count;
  }

  return 0;
}
