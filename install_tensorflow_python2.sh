#!/bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y

clear

echo "system updated"
sleep 1



#installing libs

sudo apt-get install openjdk-8-jdk automake autoconf -y
sudo apt-get install curl zip unzip libtool swig libpng12-dev zlib1g-dev pkg-config git g++ wget xz-utils libatlas-base-dev -y
sudo apt-get update -y

clear

echo "libs utils installed"
sleep 1

#installing python3

sudo apt-get install python-numpy python-dev python-pip python-mock python-setuptools python-scipy python-opencv -y
sudo apt-get update -y
clear

echo "python installed"
sleep 1



clear
echo "tensorflow downloaded"
sleep 2

if [ ! -f /home/ubuntu/get-pip.py ]; then
	wget https://bootstrap.pypa.io/get-pip.py 
	sudo python get-pip.py
	rm get-pip.py
fi

pip install setuptools
pip install wheel


clear
echo "pip installed and pip packages"
sleep 2


#eviting erros
sudo apt-get install -y software-properties-common
sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get autoclean -y
sudo apt-get autoremove -y

clear
echo "All packages are installed"
sleep 2


#installing tensorflow
#downloading tensorflow 1.10

arch=`uname -m`

echo "$arch"

if [ "$arch" == "armv7l" ]; then
    if [ ! -f /home/ubuntu/tensorflow-1.10.0-cp27-none-linux_armv7l.whl ]; then
	wget https://github.com/lhelontra/tensorflow-on-arm/releases/download/v1.10.0/tensorflow-1.10.0-cp27-none-linux_armv7l.whl
        pip install tensorflow-1.10.0-cp27-none-linux_armv7l.whl
        rm tensorflow-1.10.0-cp27-none-linux_armv7l.whl
   fi

fi

if [ "$arch" == "aarch64" ]; then
    if [ ! -f /home/ubuntu/tensorflow-1.10.0-cp27-none-linux_aarch64.whl ]; then
	wget https://github.com/lhelontra/tensorflow-on-arm/releases/download/v1.10.0/tensorflow-1.10.0-cp27-none-linux_aarch64.whl
        pip install tensorflow-1.10.0-cp27-none-linux_aarch64.whl
        rm tensorflow-1.10.0-cp27-none-linux_aarch64.whl
   fi

fi




echo " Python packages installed. Testing..."
sudo python -c "import tensorflow as tf; print(tf.__version__);print('ok')"
sleep 1
echo "finished"

sudo python -c "import cv2"

sleep 1

sleep 10


df -h
