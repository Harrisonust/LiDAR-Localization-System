#!/usr/bin/env bash
echo "Start launching lidar system"
echo "Launching roscore"
roscore
sleep 10
echo "Launching 1xrplidar.launch(lidar and odom)"
roslaunch 1xrplidar.launch &> logs/lidar &
# tf_tree
echo "Launching rviz"
rviz -d ~/rviz_config/amcl.rviz &> ~/logs/rviz &
echo "Finsih launching lidar system"
