#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

sudo apt-get update -y
sudo apt-get install kali-tools-top10 -y

###################### setting up rdp with xfce ######################

sudo apt-get install kali-desktop-xfce xorg xrdp -y

# configuring xrdp to listen to port 3390

sudo sed -i 's/port=3389/port=3390/g' /etc/xrdp/xrdp.ini

# starting xrdp service

sudo systemctl start xrdp
sudo systemctl enable xrdp

###################### clean up ######################

sudo apt-get clean
sudo rm -rf /var/lib/apt/lists/*

######################################################################

echo "*************** done ***************"
