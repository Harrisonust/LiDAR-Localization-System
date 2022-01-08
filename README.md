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
cp 99-usb-serial-rules /etc/udev/rules.d/
```
Or follow the [guide](https://msadowski.github.io/linux-static-port/) here:


## Run lidar locationing system 
TODO!!!

It can be run in a single script:
```command 
cd ~/home/catkin_ws/launches
bash locate_sys.sh
```
however it is relatively hard to debug, when debugging, run the following commands instead.
```command 
roscore # wait for about 5 to 10 seconds for ros to set everything up before running any other launch/package

#open another terminal
cd ~/home/catkin_ws/launches
roslaunch 1xrplidar.launch

#open another terminal
rviz
```
