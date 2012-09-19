
cmake_minimum_required(VERSION 2.8)
project(auxos_messages)
find_package(catkin REQUIRED)
find_package(ROS REQUIRED COMPONENTS genmsg actionlib_msgs std_msgs geometry_msgs)
catkin_stack()
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


generate_messages(DEPENDENCIES std_msgs geometry_msgs actionlib_msgs)

catkin_project(${PROJECT_NAME})

# install all manifests
install_matching_to_share(manifest.xml)

install(FILES stack.xml
        DESTINATION share/common_msgs)
