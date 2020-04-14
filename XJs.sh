#!/bin/bash
echo "Removing Old Theme"
rm -rf /home/panel/html/asset
rm -rf /home/panel/html/view
rm -rf /home/panel/html/tmp/*
echo "Installing XJ's VPN Template"
cd ~
mkdir xamjyss08
cd xamjyss08
rm -rf *
wget https://github.com/xamjyss143/ocspaneltemplate/raw/master/XJ.tar.gz && tar zxvf XJ.tar.gz
wget https://github.com/xamjyss143/ocspaneltemplate/raw/master/memberconfigs.tar.gz && tar zxvf memberconfigs.tar.gz
mv configs.php /home/panel/html/controller/member
wget https://github.com/xamjyss143/ocspaneltemplate/raw/master/helperconfigs.tar.gz && tar zxvf helperconfigs.tar.gz
mv configs.php /home/panel/html/controller/helper
wget https://github.com/xamjyss143/ocspaneltemplate/raw/master/modelconfigs.tar.gz && tar zxvf modelconfigs.tar.gz
mv configs.php /home/panel/html/model
wget https://github.com/xamjyss143/ocspaneltemplate/raw/master/coronaroute.tar.gz && tar zxvf coronaroute.tar.gz
mv route.php /home/panel/html/config
mv asset /home/panel/html
mv view /home/panel/html
echo "XJ's VPN Template Successfully Installed"
