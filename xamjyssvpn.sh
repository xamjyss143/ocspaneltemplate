#!/bin/bash
echo "Removing Old Theme"
rm -rf /home/panel/html/assets
rm -rf /home/panel/html/view
rm -rf /home/panel/html/tmp/*
echo "Installing XAMJYSSVPN Template"
cd ~
mkdir xamjyssvpn
cd xamjyssvpn
rm -rf *
wget https://github.com/xamjyss143/ocspaneltemplate/raw/master/xamjyssvpn.tar.gz && tar zxvf xamjyssvpn.tar.gz
mv assets /home/panel/html
mv view /home/panel/html
echo "XAMJYSSVPN Template Successfully Installed"
