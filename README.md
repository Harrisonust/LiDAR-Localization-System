# Lidar-locationing-system

This project aims to develop and deploy a robust localization system for high-speed robots using ROS (Robot Operating System) and LIDAR (Light Detection and Ranging) data. By leveraging the capabilities of both ROS and LIDAR technology, we have successfully addressed the challenges associated with high-speed robot localization and achieved significant improvements over traditional methods relying solely on IMU (Inertial Measurement Unit) and encoder measurements.

## Features
1. Enhanced Localization Accuracy: Our system incorporates LIDAR data to overcome the limitations of relying solely on IMU and encoder measurements. This integration allows for more precise and reliable localization of high-speed robots, resulting in reduced localization errors.

2. ROS Integration: We have leveraged the power of ROS, a flexible framework for writing robot software, to build our Lidar Locationing System. ROS provides a wide range of tools, libraries, and functionalities, enabling seamless integration with various robot hardware and software components.

3. Real-Time Localization: The system is designed to operate in real-time, providing continuous and up-to-date localization information for the high-speed robot. This enables the robot to accurately perceive its position and orientation in dynamic environments, facilitating efficient and reliable navigation.

## ROS requirments
Download this repo together with ros by running folloiwing commands(recommended)
```command
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src
git clone https://github.com/Harrisonust/Lidar-locationing-system
bash Lidar-locationing-system/scripts/rosinstall.sh
```
or follow the[ Official Installaton guide](http://wiki.ros.org/melodic/Installation/Ubuntu)

## Assign Static USB port for ROS
By copy the predefined rules to system:
```command
sudo cp 99-usb-serial-rules /etc/udev/rules.d/
```
Or follow the [guide](https://msadowski.github.io/linux-static-port/) here:

## Run ROS package
```command
roscore
rosrun <package-name> <executable-file>
roslaunch <package-name> <launch-file> # choose one to use, depends on what u r trying to run
```

## Run lidar locationing system 

It can be run in a single script:
```command 
cd ~/home/catkin_ws/launches
bash locate_sys.sh
```
## Other useful stuff

### Permission deny when accessing device
```command
sudo chmod 777 /dev/ttyUSB0
```

### Visualizing tools
```command 
rosrun rviz rviz
rosrun rqt_graph rqt_graph
rosrun rqt_tf_tree rqt_tf_tree
```
