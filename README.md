# shellIOT

List of commands to download and install basic programs to init developing Internet Of Things

------

## Install
in sudo mode
```sh
$ chmod +x iot.sh
$ ./iot.sh
```

## Folders path
  - /home/IOT/mqttSpy
  - /home/IOT/Freeboard


This list includes:
  - Arduino IDE   -  version: 1.8.5
  - NodeJS    -  version: latest
  - NPM    -  version: latest
  - Node-RED   -  version: latest
  - FreeBoard   -  version: latest
  - mqttSpy   -  version: 1.0.0
  
## Commands
To execute somethings may you need to call by terminal, e.g.:
```sh
$ node-red
```
  
## Arduino IDE
The open-source Arduino Software (IDE) makes it easy to write code and upload it to the board. It runs on Windows, Mac OS X, and Linux. The environment is written in Java and based on Processing and other open-source software. 

reference [here](https://www.arduino.cc/en/main/software)

## NodeJS
Node.js® is a JavaScript runtime built on Chrome's V8 JavaScript engine. Node.js uses an event-driven, non-blocking I/O model that makes it lightweight and efficient. Node.js' package ecosystem, npm, is the largest ecosystem of open source libraries in the world.

reference [here](https://nodejs.org/en/)

## NPM
npm is the package manager for JavaScript and the world’s largest software registry. Discover packages of reusable code — and assemble them in powerful new ways.

reference [here](https://www.npmjs.com/)

## NODE-RED
Node-RED is a programming tool for wiring together hardware devices, APIs and online services in new and interesting ways. It provides a browser-based editor that makes it easy to wire together flows using the wide range of nodes in the palette that can be deployed to its runtime in a single-click.

reference [here](https://nodered.org/)

## FreeBoard 
Build real-time, interactive dashboards and visualizations in minutes using the intuitive drag & drop interface. There are brains behind the beauty. Every Freeboard is built upon a secure, high-performance, enterprise-class cloud system.

reference [here](http://freeboard.io/)

## mqttSpy
mqtt-spy is an open source utility intended to help you with monitoring activity on MQTT topics. It's been designed to deal with high volumes of messages, as well as occasional publications.

reference [here](https://github.com/eclipse/paho.mqtt-spy/wiki)



-------


## Explain block by block

### Nodejs, NPM, Node-RED
```sh
  apt-get update
  apt-get remove arduino -y
  apt-get autoremove -y
  apt-get update
  apt-get install nodejs-legacy -y
  apt-get install npm -y
  npm install node-red -g
  apt-get update
```
  - It do a update and remove a arduino version by ubuntu library
  - Install nodejs and npm
  - Npm install a node-red module in global mode (do you can use in any scope)
  - Do a update to install new programs later
  
  
### Arduino IDE
```sh
cd $HOME
mkdir arduino_installer/
cd $HOME/arduino_installer
wget https://downloads.arduino.cc/arduino-1.8.5-linux64.tar.xz
tar -Jxxvf arduino-1.8.5-linux64.tar.xz
cd arduino-1.8.5
./install.sh

cd $HOME
rm -rf $HOME/arduino_installer/
```
  - Create a folder in home/arduino_installer
  - Download arduino package for this folder
  - Install Arduino IDE.
  - Remove Arduino installer
  
  
### mqttSpy
```sh
mkdir $HOME/IOT
mkdir $HOME/IOT/MQTTspy


## Download mqttspy
cd $HOME/IOT/MQTTspy

wget https://github.com/eclipse/paho.mqtt-spy/releases/download/1.0.0/mqtt-spy-1.0.0.jar
chmod +x $HOME/IOT/MQTTspy/mqtt-spy-1.0.0.jar
```

  - Create folder in home/iot
  - Download mqttSpy application
  - Make him executable
  
  
### FreeBoard
```sh
cd $HOME/IOT/
wget -O freeboard-master.zip https://github.com/Freeboard/freeboard/archive/master.zip

unzip freeboard-master.zip

rm -rf freeboard-master.zip

cd $HOME/IOT/freeboard-master

npm install
```

  - Navigate for the home/iot
  - Download the freeboard files
  - Install freeboard by npm


### User Permission
```sh
usermod -a -G tty $USER
usermod -a -G dialout $USER
```
  - Let permission to the user send code for arduino board
