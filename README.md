# Lidar-locationing-system

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
