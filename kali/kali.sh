#!/bin/bash

sudo apt-get update -y

###################### installing kali-tools-top10 ###################

sudo DEBIAN_FRONTEND=noninteractive apt-get install kali-tools-top10 -y

###################### setting up rdp with xfce ######################

# configuring xrdp to listen to port 3390

sudo DEBIAN_FRONTEND=noninteractive apt-get install kali-desktop-xfce xorg xrdp -y

sudo sed -i 's/port=3389/port=3390/g' /etc/xrdp/xrdp.ini

# starting xrdp service

sudo systemctl start xrdp
sudo systemctl enable xrdp

###################### clean up ######################

sudo apt-get clean
sudo rm -rf /var/lib/apt/lists/*

######################################################################

echo "*************** done ***************"
