#include "ros/ros.h"
#include "std_msgs/String.h"
#include "std_msgs/Int64.h"
#include "std_msgs/Float64MultiArray.h"
#include <sstream>
#include <vector>

/**
 * This tutorial demonstrates simple sending of messages over the ROS system.
 */
int main(int argc, char **argv)
{
  ros::init(argc, argv, "NodeA");

  ros::NodeHandle n;

  ros::Publisher string_pub = n.advertise<std_msgs::String>("String", 1000);
	ros::Publisher int64_pub = n.advertise<std_msgs::Int64>("Int64", 1000);
	ros::Publisher float64array_pub = n.advertise<std_msgs::Float64MultiArray>("Float64MultiArray", 1000);

  ros::Rate loop_rate(1);

  /**
   * A count of how many messages we have sent. This is used to create
   * a unique string for each message.
   */
  int count = 0;
	std::vector<double> array;
  while (ros::ok())
  {
    std_msgs::String stringmsg;
		std_msgs::Int64 integer64;
		std_msgs::Float64MultiArray float64array;

    std::stringstream ss;
    ss << "hello world!";
    stringmsg.data = ss.str();

		integer64.data = count;
		
		array.push_back((double)count);
		float64array.data = array;

    ROS_INFO("StringTopic publish: %s", stringmsg.data.c_str());
		ROS_INFO("Int64 publish: %ld", integer64.data);
		ROS_INFO("Float64MultiArray publish: ");
		for(int i = 0; i < array.size(); i++)
		{

			std::printf("%.2f ", float64array.data[i]);
		}
		std::printf("\n");

    string_pub.publish(stringmsg);
		int64_pub.publish(integer64);
		float64array_pub.publish(float64array);

    ros::spinOnce();

    loop_rate.sleep();
    ++count;
  }


  return 0;
}
