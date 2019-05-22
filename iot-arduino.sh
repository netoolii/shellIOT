#!/bin/bash

apt-get update
apt-get remove arduino -y
apt-get autoremove -y
apt-get update	
apt-get install nodejs-legacy -y
apt-get install npm -y
npm install node-red -g
npm install node-red-dashboard -g
apt-get update

clear


echo "Installed:::> NodeJS, Node-red"
sleep 3


## Install arduino IDE
cd $HOME
mkdir arduino_installer/
cd $HOME/arduino_installer
wget https://downloads.arduino.cc/arduino-1.8.5-linux64.tar.xz
tar -Jxxvf arduino-1.8.5-linux64.tar.xz
cd arduino-1.8.5
./install.sh



clear


echo "Installed:::> Arduino IDE"
sleep 1
echo "Removing:::> Arduino IDE installer"
cd $HOME
rm -rf $HOME/arduino_installer/

sleep 3



mkdir $HOME/IOT
mkdir $HOME/IOT/MQTTspy


## Download mqttspy
cd $HOME/IOT/MQTTspy

wget https://github.com/eclipse/paho.mqtt-spy/releases/download/1.0.0/mqtt-spy-1.0.0.jar
chmod +x $HOME/IOT/MQTTspy/mqtt-spy-1.0.0.jar




#download Freeboard
cd $HOME/IOT/
wget -O freeboard-master.zip https://github.com/Freeboard/freeboard/archive/master.zip

unzip freeboard-master.zip

rm -rf freeboard-master.zip

cd $HOME/IOT/freeboard-master

npm install

clear

echo "Installed:::> MqttSPY, Freeboard"
sleep 2


usermod -a -G tty $USER
usermod -a -G dialout $USER

echo "Permitindo acesso a porta arduino."
sleep 2


groups


echo "Você precisa reiniciar... para garantir acesso as portas seriais"
sleep 10

