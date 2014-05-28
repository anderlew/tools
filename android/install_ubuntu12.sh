#!/bin/sh

#http://source.android.com/source/initializing.html

#sudo add-apt-repository "deb http://us.archive.ubuntu.com/ubuntu/ hardy multiverse"
#sudo apt-get update
#sudo apt-get install sun-java6-jdk -y

sudo apt-get install git gnupg flex bison gperf build-essential zip curl libc6-dev libncurses5-dev:i386 x11proto-core-dev libx11-dev:i386 libreadline6-dev:i386 libgl1-mesa-dev g++-multilib mingw32 tofrodos python-markdown libxml2-utils xsltproc zlib1g-dev:i386 libglapi-mesa:i386 libgl1-mesa-glx:i386 -y

sudo apt-get install gcc-4.4 g++-4.4 g++-4.4-multilib -y
sudo rm /usr/bin/gcc
sudo rm /usr/bin/g++
sudo ln -s /usr/bin/gcc-4.4 /usr/bin/gcc
sudo ln -s /usr/bin/g++-4.4 /usr/bin/g++

sudo apt-get install flex bison gperf tofrodos mingw32 -y

sudo apt-get install ssh -y
sudo apt-get install screen -y
sudo apt-get install samba system-config-samba -y
sudo apt-get install smbfs -y
sudo apt-get install lrzsz squid curl -y

sudo apt-get install lha arj rar rpm -y

#sudo apt-get install krusader kdiff3 krename kompare -y

sudo apt-get install git -y
sudo apt-get install gawk -y


