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
wget https://github.com/xamjyss143/ocspaneltemplate/raw/master/xamjyss0218143.tar.gz && tar zxvf xamjyss0218143.tar.gz
wget https://github.com/xamjyss143/ocspaneltemplate/raw/master/memberconfigs.tar.gz && tar zxvf memberconfigs.tar.gz
mv profile.php /home/panel/html/controller/member
wget https://github.com/xamjyss143/ocspaneltemplate/raw/master/helperconfigs.tar.gz && tar zxvf helperconfigs.tar.gz
mv profile.php /home/panel/html/controller/helper
wget https://github.com/xamjyss143/ocspaneltemplate/raw/master/modelconfigs.tar.gz && tar zxvf modelconfigs.tar.gz
mv profile.php /home/panel/html/model
wget https://github.com/xamjyss143/ocspaneltemplate/raw/master/coronaroute.tar.gz && tar zxvf coronaroute.tar.gz
mv route.php /home/panel/html/config
mv assets /home/panel/html
mv view /home/panel/html
echo "CoronaPanel Template Successfully Installed"
