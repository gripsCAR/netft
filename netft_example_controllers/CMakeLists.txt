cmake_minimum_required(VERSION 2.8.3)
project(netft_example_controllers)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS 
  roscpp
  ethercat_hardware
  pr2_controller_interface
  message_generation
)

## Generate messages in the 'msg' folder
add_message_files(
  FILES
  ForceTorqueStats.msg
)

## Generate added messages and services with any dependencies listed here
generate_messages(
  DEPENDENCIES
  std_msgs
)

catkin_package(
  CATKIN_DEPENDS 
  roscpp 
  ethercat_hardware 
  pr2_controller_interface 
  std_msgs
)

include_directories(
  include 
  ${catkin_INCLUDE_DIRS}
)

## Declare a cpp library
add_library(${PROJECT_NAME} src/netft_example_controller.cpp)
add_dependencies(${PROJECT_NAME} ${PROJECT_NAME}_generate_messages_cpp)
target_link_libraries(${PROJECT_NAME} ${catkin_LIBRARIES})
