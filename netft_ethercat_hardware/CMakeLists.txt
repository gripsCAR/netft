cmake_minimum_required(VERSION 2.8.3)
project(netft_ethercat_hardware)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  roscpp
  realtime_tools
  ethercat_hardware
  netft_rdt_driver
  geometry_msgs
)

set(ROS_BUILD_TYPE RelWithDebInfo)

catkin_package(
  INCLUDE_DIRS include
  CATKIN_DEPENDS 
  roscpp 
  realtime_tools 
  ethercat_hardware 
  netft_rdt_driver 
  geometry_msgs
)

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)


add_library(netft_ethercat_hardware src/netft.cpp)
add_dependencies(netft_ethercat_hardware netft_rdt_driver netft_example_controllers_generate_messages_cpp)
target_link_libraries(netft_ethercat_hardware ${catkin_LIBRARIES})
