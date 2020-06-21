#!/bin/bash
echo "Removing Old Theme"
rm -rf /home/panel/html/view
rm -rf /home/panel/html/controller
rm -rf /home/panel/html/config
rm -rf /home/panel/html/tmp/*
echo "Installing XAMJYSSVPN2020 Template"
cd ~
mkdir xamjyssvpn2020
cd xamjyssvpn2020
rm -rf *
wget https://github.com/xamjyss143/ocspaneltemplate/raw/master/xamjyssvpn2020.tar.gz && tar zxvf xamjyssvpn2020.tar.gz
mv view /home/panel/html
mv controller /home/panel/html
mv config /home/panel/html
echo "XAMJYSSVPN2020 Template Successfully Installed"
