# NoeticDingo
Dingo ROS packages for ROS Noetic

## Installation
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
make install
cd ~
sudo rm -r temp
```

### System dependencies
```
sudo apt-get install libspnav-dev
sudo apt-get install libusb-dev
sudo apt-get install libbluetooth-dev
sudo apt-get install libcwiid1 libcwiid1-dev
sudo apt-get install geographiclib
```

### ROS Dependencies
```
sudo apt-get install ros-noetic-unique-id
sudo apt-get install ros-noetic-uuid-msgs

```
