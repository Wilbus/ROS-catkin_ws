#include "ros/ros.h"
#include "std_msgs/String.h"
#include "std_msgs/Int64.h"
#include "std_msgs/Float64MultiArray.h"
#include <vector>

void StringTopicCallback(const std_msgs::String::ConstPtr& msg)
{
  ROS_INFO("I heard string: [%s]", msg->data.c_str());
}

void Int64TopicCallback(const std_msgs::Int64::ConstPtr& msg)
{
	ROS_INFO("I heard Int64: [%ld]", msg->data);
}

void Float64MultiArrayCallback(const std_msgs::Float64MultiArray::ConstPtr& msg)
{
	std::vector<double> array;
	array = msg->data;
	printf("I heard Float64MultiArray: ");
	for(int i = 0; i < array.size(); i++)
	{
		printf("%.2f ", 2*array.at(i));
	}
	printf("\n");
}

int main(int argc, char **argv)
{
  
  ros::init(argc, argv, "NodeB");

  ros::NodeHandle n;

  ros::Subscriber sub1 = n.subscribe("String", 1000, StringTopicCallback);
	ros::Subscriber sub2 = n.subscribe("Int64", 1000, Int64TopicCallback);
	ros::Subscriber sub3 = n.
subscribe("Float64MultiArray", 1000, Float64MultiArrayCallback);

  /**
   * ros::spin() will enter a loop, pumping callbacks.  With this version, all
   * callbacks will be called from within this thread (the main one).  ros::spin()
   * will exit when Ctrl-C is pressed, or the node is shutdown by the master.
   */
  ros::spin();

  return 0;
}
