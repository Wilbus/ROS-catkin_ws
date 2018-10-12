cmake_minimum_required(VERSION 2.8.3)
project(talker_listener)

## Find catkin and any catkin packages
find_package(catkin REQUIRED COMPONENTS roscpp rospy std_msgs genmsg)

## Declare ROS messages and services
add_message_files(FILES message.msg)

## Generate added messages and services
generate_messages(DEPENDENCIES std_msgs)

## Declare a catkin package
catkin_package()

## Build talker and listener
include_directories(include ${catkin_INCLUDE_DIRS})

add_executable(NodeA src/NodeA.cpp)
target_link_libraries(NodeA ${catkin_LIBRARIES})
add_dependencies(NodeA talker_listener_generate_messages_cpp)

add_executable(NodeB src/NodeB.cpp)
target_link_libraries(NodeB ${catkin_LIBRARIES})
add_dependencies(NodeB talker_listener_generate_messages_cpp)
