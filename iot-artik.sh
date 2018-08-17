sudo apt-get update
sudo apt-get upgrade



clear

echo "system updated"
sleep 3



#installing arduino conection


sudo apt-get install curl -y

curl downloads.arduino.cc/libArduino/install_artik_prereq.sh | sh


clear
echo "arduino connection installed"
sleep 3



sudo apt-get update
sudo apt-get install apititude -y
sudo apt-get install nodejs-legacy -y
sudo apt-get install npm -y
sudo apt-get update

sudo npm install -g --unsafe-perm node-red
sudo npm install -g npm@4.x
sudo npm install -g grunt-cli


clear
echo "nodejs and node-red installed"
sleep 3

#installing plugins node-red

sudo npm -g install node-red-contrib-artik 
sudo npm -g install node-red-contrib-artik-cloud 
#sudo npm -g install node-red-contrib-dashboard
sudo npm -g install node-red-dashboard


clear
echo "node-red plugins installed"
sleep 3

sudo apt-get autoclean
sudo apt-get autoremove

clear
echo "finished"
sleep 10
