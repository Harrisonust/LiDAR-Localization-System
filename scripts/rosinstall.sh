echo "Install ROS melodic"
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt update
sudo apt install -y ros-melodic-desktop-full
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc

echo "Install ROS dependencies"
sudo apt install -y python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential
sudo rosdep init
rosdep update

sudo apt update
source ~/.bashrc

echo "Making catkin workspace"
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws
catkin_make
echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc
source ~/.bashrc

echo "Installing our needed ROS packages"
sudo apt install -y 'ros-melodic-rplidar-ros'
sudo apt install -y 'ros-melodic-hector-slam'
sudo apt install -y 'ros-melodic-amcl'
sudo apt install -y 'ros-melodic-map-server'
sudo apt install -y 'ros-melodic-ira-laser-tools'
sudo apt install -y 'ros-melodic-rosserial'
sudo apt install -y 'ros-melodic-rosserial-client'
sudo apt install -y 'ros-melodic-rosserial-msgs'
sudo apt install -y 'ros-melodic-rosserial-python'
sudo apt install -y 'ros-melodic-rosserial-server'

echo "Downloading our scripts"
# TODO: Change to tar
git clone -b enhancement/ROS https://github.com/HKUST-Robocon/F4-Vegvisir.git --depth 1 --recursive
