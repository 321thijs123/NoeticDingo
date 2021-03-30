#Automatic install script for Geographic lib

export startlocation=$PWD	#Store current folder to go back at the end
export templocation="${startlocation}/compile_temp"
trap cleanup INT		#When ctrl-c is pressed call cleanup

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

cleanup() {
	echo -e "${GREEN}Finishing cleanly${NC}"
	cd "$startlocation"
	sudo rm -r "$templocation"
	unset startlocation
	unset templocation
	exit
}

mkdir "$templocation"	#In this folder everything will be compiled, will be deleted afterwards
cd "$templocation"

#Download and unpack
wget https://sourceforge.net/projects/geographiclib/files/distrib/GeographicLib-1.51.tar.gz
tar xfpz GeographicLib-1.51.tar.gz
cd GeographicLib-1.51
mkdir "BUILD"	#Folder everything will be build in
cd "BUILD"
echo -e "${RED}${PWD}"
cmake ..		#Make build system
make			#Compile
sudo make install	#Install

cleanup			#Finish cleanly
