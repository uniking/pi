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
sudo apt install mplayer
sudo apt install autoconf
sudo apt install locate
sudo apt install hgsvn
sudo apt install cmake
sudo apt install aria2

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
sudo apt install -y gpac

#audio analyze
sudo apt install alsa-tools
sudo apt install libasound2-dev

#sphinx
sudo apt install libtool
sudo apt install bison
sudo apt install python-dev
sudo apt install swig

#TTS
sudo apt install festival
sudo apt install libsndfile1-dev libpulse-dev libncurses5-dev libmp3lame-dev libespeak-dev
sudo apt install pulseaudio
sudo apt install sox

#ml
sudo apt install libshogun-dev
sudo apt install shogun-cmdline-static
sudo apt install libsvm-tools

#down source file
git clone git://git.drogon.net/wiringPi

