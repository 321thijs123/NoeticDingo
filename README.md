# Noetic Dingo
Dingo ROS packages with all required components for it to work on ROS noetic

## Installation
### Clone this repository
```
cd ~/catkin_ws/src
git clone https://github.com/321thijs123/noetic_dingo
```

### Geographic lib installation
```
mkdir ~/temp
cd ~/temp
wget https://sourceforge.net/projects/geographiclib/files/distrib/GeographicLib-1.51.tar.gz
tar xfpz GeographicLib-1.51.tar.gz
cd GeographicLib-1.51
mkdir BUILD
cd BUILD
cmake ..
make
make test
sudo make install
cd ~
sudo rm -r temp
```

### System Dependencies
```
sudo apt-get install libspnav-dev
sudo apt-get install libusb-dev
sudo apt-get install libbluetooth-dev
sudo apt-get install libcwiid1 libcwiid-dev
sudo apt-get install libsdl-image1.2-dev
```

### ROS Dependencies
```
sudo apt-get install ros-noetic-unique-id
sudo apt-get install ros-noetic-uuid-msgs
```

### Compile packages
```
cd ~/catkin_ws
catkin_make
```

## Usage
### Empty world with lidar
```
source ~/catkin_ws/devel/setup.bash
roslaunch dingo_gazebo empty_world.launch config:=front_laser
roslaunch dingo_viz view_robot.launch
```
