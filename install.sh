sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
sudo cp ./sources.list /etc/apt/
sudo mv /etc/apt/sources.list.d/raspi.list /etc/apt/sources.list.d/raspi.list.bak
sudo apt-get update
sudo apt-get upgrade -y

sudo apt install htop
sudo apt install git
sudo apt install apt-file
sudo apt install libsqlite3-dev

sudo apt install lighttpd 
sudo apt install php5-cgi 
sudo lighty-enable-mod fastcgi
sudo lighty-enable-mod fastcgi-php
sudo service lighttpd force-reload

sudo apt install ntfs-3g

git clone git://git.drogon.net/wiringPi
