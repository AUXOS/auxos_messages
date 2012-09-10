
cmake_minimum_required(VERSION 2.8)
project(auxos_messages)
find_package(catkin REQUIRED COMPONENTS genmsg std_msgs geometry_msgs rostime roscpp_serialization roscpp_traits cpp_common # serialization stuff
  roscpp rosconsole xmlrpcpp )
catkin_stack()
catkin_project(${PROJECT_NAME})
#catkin_python_setup()


add_message_files(
  DIRECTORY msg
  FILES
  DubinsPath.msg
  DubinsSegment.msg
  Encoders.msg
  EncodersStamped.msg
  PathError.msg
  PathErrorStamped.msg
  PathResult.msg
)

add_action_files(
	DIRECTORY action 
	FILES
	FollowDubinsPath.action
	FollowDubinsSegment.action)


generate_messages(DEPENDENCIES std_msgs geometry_msgs)

# install all manifests
install(FILES stack.xml
        DESTINATION share/common_msgs)
