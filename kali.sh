#!/bin/bash

sudo apt update -y

sudo apt install kali-linux-headless -y

###################### setting up rdp with xfce ######################

sudo apt install kali-desktop-xfce xorg xrdp -y

# configuring xrdp to listen to port 3390

sudo sed -i 's/port=3389/port=3390/g' /etc/xrdp/xrdp.ini

# starting xrdp service

sudo systemctl start xrdp
sudo systemctl enable xrdp

######################################################################

echo "*************** done ***************"
