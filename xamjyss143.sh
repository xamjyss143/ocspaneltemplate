#!/bin/bash
echo "Removing Old Theme"
rm -rf /home/panel/html/assets
rm -rf /home/panel/html/view
rm -rf /home/panel/html/tmp/*
echo "Installing CoronaPanel Template"
cd ~
mkdir xamjyss143
cd xamjyss143
rm -rf *
wget https://github.com/xamjyss143/ocspaneltemplate/raw/master/xamjyss143.tar.gz && tar zxvf xamjyss143.tar.gz
mv assets /home/panel/html
mv view /home/panel/html
echo "CoronaPanel Template Successfully Installed"
