netft
=====

ROS packages by the [Group of Robots and Intelligent Machines](http://www.romin.upm.es/) from the [Universidad Politécnica de Madrid](http://www.upm.es/internacional). This group is part of the [Centre for Automation and Robotics](http://www.car.upm-csic.es/) (CAR UPM-CSIC). On going development continues in the hydro-devel branch.

**Maintainer:** Francisco Suárez Ruiz, [http://www.romin.upm.es/fsuarez/](http://www.romin.upm.es/fsuarez/)

### Documentation

  * See the installation instructions below.
  * This repository.
  * Throughout the various files in the packages.
  * For questions, please use [http://answers.ros.org](http://answers.ros.org)

### Build Status

[![Build Status](https://travis-ci.org/fsuarez6/netft.png?branch=hydro-devel)](https://travis-ci.org/fsuarez6/netft)


## Installation

### Basic Requirements

  1. Install [ROS Hydro](http://wiki.ros.org/hydro/Installation/Ubuntu) (**Desktop Install** Recommended)
  
```
sudo apt-get install ros-hydro-desktop
``` 

### Repository Installation

Go to your ROS working directory. e.g.
```
cd ~/catkin_ws/src
``` 
Use the `wstool` to install the repository
```
wstool init .
wstool merge https://raw.github.com/fsuarez6/netft/hydro-devel/netft.rosinstall
wstool update
``` 
Install any missing dependencies using rosdep:
```
rosdep update
rosdep install --from-paths . --ignore-src --rosdistro hydro
``` 
Now compile your ROS workspace. e.g.
```
cd ~/catkin_ws && catkin_make
``` 

### Testing Installation

Be sure to always source the appropriate ROS setup file, which for Hydro is done like so:
```
source /opt/ros/hydro/setup.bash
``` 
You might want to add that line to your `~/.bashrc`

Try any of the `.launch` files in the `netft_rdt_driver` package: (e.g. `netft.launch`)
```
roslaunch netft_rdt_driver netft.launch
``` 

## Changelog
### 0.2.0 (2014-05-14)
* Catkinized `netft` metapackage
* Contributors: fsuarez6

### 0.1.3 (2012-02-27)
* Change plot script to use `geometry_msgs::WrenchStamped`
* Boost linker fixes for Oneric.
* Contributors: dking, vrabaud

### 0.1.2 (2011-09-19)
* Change from `geometry_msgs::Wrench` to `geometry_msgs::WrenchStamped`
* `netft_node`: Use condition variable instead of idle loop in `waitForNewData()`. Added publishing rate command line.
* Change plot script to use `geometry_msgs::Wrench`
* Contributors: dking

### 0.1.1 (2011-02-17)
* Example controller that uses netft force/torque data. 
* Contributors: dking

### 0.1.0 (2011-02-15)
* Initial release
* Contributors: dking

## Roadmap

### 0.2.1 (2013-05-20)
* Improve `netft_node`
* Contributors: fsuarez6

## Tutorials
TODO

