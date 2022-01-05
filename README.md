# Lidar-locationing-system

## ROS requirments
Either run rosinstall.sh under scripts folder(recommended)
```command
bash scripts/rosinstall.sh
```
or follow the[ Official Installaton guide](http://wiki.ros.org/melodic/Installation/Ubuntu)

## Assign Static USB port for ROS
[Guide](https://msadowski.github.io/linux-static-port/)

## Run lidar locationing system 
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
