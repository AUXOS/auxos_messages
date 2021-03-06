cmake_minimum_required(VERSION 2.8.3)
project(auxos_messages)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS actionlib actionlib_msgs message_generation nav_msgs std_msgs)

## System dependencies are found with CMake's conventions
# find_package(Boost REQUIRED COMPONENTS system)

## Uncomment this if the package has a setup.py. This macro ensures
## modules and scripts declared therein get installed
# catkin_python_setup()

#######################################
## Declare ROS messages and services ##
#######################################

add_action_files(
  FILES
  FollowDubinsPath.action
  FollowDubinsSegment.action
  PlanThenFollowDubinsPath.action
  TopicLogger.action
)

## Generate messages in the 'msg' folder
add_message_files(
  FILES
  DubinsPath.msg
  DubinsSegment.msg
  EmData.msg
  EmDataStamped.msg
  Encoders.msg
  EncodersStamped.msg  
  PathError.msg
  PathErrorStamped.msg
  PathResult.msg
  LogNotes.msg
  Rmp440Command.msg
)

# Generate services in the 'srv' folder
add_service_files(
  FILES
  uuid.srv
  LockWaypointIndex.srv
)

# Generate added messages and services with any dependencies listed here
generate_messages(
  DEPENDENCIES
  actionlib_msgs  nav_msgs  std_msgs
)

###################################################
## Declare things to be passed to other projects ##
###################################################

## LIBRARIES: libraries you create in this project that dependent projects also need
## CATKIN_DEPENDS: catkin_packages dependent projects also need
## DEPENDS: system dependencies of this project that dependent projects also need
catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES auxos_messages
  CATKIN_DEPENDS message_runtime actionlib actionlib_msgs nav_msgs std_msgs
#  DEPENDS system_lib
)

###########
## Build ##
###########

## Specify additional locations of header files
# include_directories(include ${catkin_INCLUDE_DIRS} ${Boost_INCLUDE_DIRS})

## Declare a cpp library
# add_library(auxos_messages
#   src/${PROJECT_NAME}/auxos_messages.cpp
# )

## Declare a cpp executable
# add_executable(auxos_messages_node src/auxos_messages_node.cpp)

## Add dependencies to the executable
# add_dependencies(auxos_messages_node ${PROJECT_NAME})

## Specify libraries to link a library or executable target against
# target_link_libraries(auxos_messages_node
#   ${catkin_LIBRARIES}
# )

#############
## Install ##
#############

## Mark executable scripts (Python etc.) for installation
## not required for python when using catkin_python_setup()
# install(PROGRAMS
#   scripts/my_python_script
#   DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
# )

## Mark executables and/or libraries for installation
# install(TARGETS auxos_messages auxos_messages_node
#   ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
#   LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
#   RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
# )

## Mark cpp header files for installation
# install(DIRECTORY include/${PROJECT_NAME}/
#   DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
#   FILES_MATCHING PATTERN "*.h"
#   PATTERN ".svn" EXCLUDE
# )

## Mark other files for installation (e.g. launch and bag files, etc.)
# install(FILES
#   # myfile1
#   # myfile2
#   DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
# )

#############
## Testing ##
#############

## Add gtest based cpp test target and link libraries
# catkin_add_gtest(${PROJECT_NAME}-test test/test_auxos_messages.cpp)
# if(TARGET ${PROJECT_NAME}-test)
#   target_link_libraries(${PROJECT_NAME}-test ${PROJECT_NAME})
# endif()

## Add folders to be run by python nosetests
# catkin_add_nosetests(test)
