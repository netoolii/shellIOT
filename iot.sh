apt-get update
apt-get remove arduino -y
apt-get autoremove -y
apt-get update	
apt-get install nodejs-legacy -y
apt-get install npm -y
npm install node-red -g
apt-get update

clear


echo "Installed:::> NodeJS, Node-red"
sleep 3


## Install arduino IDE
cd /home/ocean/Downloads
wget https://downloads.arduino.cc/arduino-1.8.5-linux64.tar.xz
tar -Jxxvf /home/ocean/Downloads/arduino-1.8.5-linux64.tar.xz
cd /home/ocean/Downloads/arduino-1.8.5
./install.sh


clear

echo "Installed:::> Arduino IDE"
sleep 3



mkdir /home/ocean/IOT
mkdir /home/ocean/IOT/MQTTspy


## Download mqttspy
cd /home/ocean/Downloads
wget https://github.com/kamilfb/mqtt-spy/releases/download/mqtt-spy_v0.5.4/mqtt-spy-0.5.4-jar-with-dependencies.jar
mv /home/ocean/Downloads/mqtt-spy-0.5.4-jar-with-dependencies.jar /home/ocean/IOT/MQTTspy

chmod +x /home/ocean/IOT/MQTTspy/mqtt-spy-0.5.4-jar-with-dependencies.jar




#download Freeboard
cd /home/ocean/Downloads
wget -O freeboard-master.zip https://github.com/Freeboard/freeboard/archive/master.zip
mv /home/ocean/Downloads/freeboard-master.zip /home/ocean/IOT


cd /home/ocean/IOT

unzip freeboard-master.zip

rm -rf freeboard-master.zip


cd /home/ocean/IOT/freeboard-master

npm install

clear

echo "Installed:::> MqttSPY, Freeboard"
sleep 2


usermod -a -G tty "ocean"
usermod -a -G dialout "ocean"

echo "Permitindo acesso a porta arduino."
sleep 2


groups


echo "Reiniciando... para garantir acesso as portas seriais"
sleep 10

