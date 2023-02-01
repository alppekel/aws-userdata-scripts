#!/bin/bash

sudo apt update -y
sudo apt full-upgrade -y

sudo apt install kali-tools-top10 -y


###################### setting up rdp with xfce ######################

sudo apt install kali-desktop-xfce xorg xrdp -y

# configuring xrdp to listen to port 3390

sudo sed -i 's/port=3389/port=3390/g' /etc/xrdp/xrdp.ini

# restarting xrdp service

sudo systemctl start xrdp
sudo systemctl enable xrdp

######################################################################