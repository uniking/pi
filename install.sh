# time zone
sudo cp -f /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

#a li sources
sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
sudo cp ./sources.list /etc/apt/
sudo mv /etc/apt/sources.list.d/raspi.list /etc/apt/sources.list.d/raspi.list.bak
sudo apt-get update
sudo apt-get upgrade -y

#other app
sudo apt install htop
sudo apt install git
sudo apt install apt-file
sudo apt install libsqlite3-dev
sudo apt install ntfs-3g
sudo apt install kpartx

#web 
sudo apt install lighttpd 
sudo apt install php5-cgi 
sudo lighty-enable-mod fastcgi
sudo lighty-enable-mod fastcgi-php
sudo service lighttpd force-reload


sudo apt install python-imaging
sudo apt install zbar-tools
sudo apt install qrencode
sudo apt install python-pygame

#video and image analyze
sudo apt install libopencv-dev
sudo apt install libopencv-ml-dev
sudo apt install libopencv-videostab-dev

#audio analyze
sudo apt install alsa-tools

#down source file
git clone git://git.drogon.net/wiringPi

