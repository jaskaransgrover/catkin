#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>

int main(int argc, char **argv)
{
	ros::init(argc, argv, "taler_node");
	ros::NodeHandle n;
	ros::Publisher chatter_publisher = n.advertise<std_msgs::String>("chatter",1000);
	ros::Rate loop_rate(0.5);

	int count = 0;
	while (ros::ok())
	{
		std_msgs::String msg;
		std::stringstream ss;
		ss <<"Hello World" <<count;
		msg.data = ss.str();


	}
	return 0;
}