#Automatic install script for Dingo dependencies

cd $(dirname $0)

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

echo -e "${GREEN}Installing system dependencies${NC}"
sudo apt-get install libspnav-dev libusb-dev libbluetooth-dev libcwiid1 libcwiid-dev libsdl-image1.2-dev

echo -e "${GREEN}Installing ROS dependencies${NC}"
sudo apt-get install ros-noetic-unique-id ros-noetic-uuid-msgs

if test -f /usr/local/lib/libGeographic.so; then
	echo -e "${RED}Geographic lib already installed, skipping${NC}"
else
	./gl_install.sh
fi

echo -e "${GREEN}Done!${NC}"
