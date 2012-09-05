cmake_minimum_required(VERSION 2.8)
project(auxos_messages)

find_package(catkin REQUIRED)
find_package(ROS REQUIRED COMPONENTS genmsg std_msgs)

catkin_stack()

project(auxos_messages)
find_package(ROS REQUIRED COMPONENTS geometry_msgs)

add_message_files(
  DIRECTORY msg
  FILES
  Encoders.msg
  PathError.msg
  StampedEncoders.msg
  StampedPathError.msg
)

add_service_files(
  DIRECTORY srv
  FILES control.srv)

generate_messages(DEPENDENCIES std_msgs geometry_msgs)

catkin_project(${PROJECT_NAME})

# install all manifests
#install_matching_to_share(manifest.xml)

install(FILES stack.xml
        DESTINATION share/common_msgs)

