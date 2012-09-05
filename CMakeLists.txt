cmake_minimum_required(VERSION 2.8)
project(auxos_msgs)

find_package(catkin REQUIRED COMPONENTS genmsg)

catkin_stack()
catkin_project(std_msgs
  INCLUDE_DIRS include)

add_message_files(
  DIRECTORY msg
  FILES
  Encoders.msg
  PathError.msg
  StampedEncoders.msg
  StampedPathError.msg
)

generate_messages(DEPENDENCIES std_msgs)

install(FILES 
  include/auxos_msgs/Encoders.h
  include/auxos_msgs/PathError.h
  include/auxos_msgs/StampedEncoders.h
  include/auxos_msgs/StampedPathError.h
  DESTINATION ${PROJECT_INCLUDE_DESTINATION}
)