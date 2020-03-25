  
#!/bin/bash
echo "Removing Old Theme"
rm -rf /home/panel/html/assets
rm -rf /home/panel/html/view
rm -rf /home/panel/html/tmp/*
rm -rf /home/panel/html/config/route.php
echo "Installing XAMJYSSVPN Template"
cd ~
mkdir xamjyss
cd xamjyss
rm -rf *
wget https://github.com/xamjyss143/ocspaneltemplate/raw/master/xamjyss.tar.gz && tar zxvf xamjyss.tar.gz
wget https://github.com/xamjyss143/ocspaneltemplate/raw/master/memberconfigs.tar.gz && tar zxvf memberconfigs.tar.gz
mv configs.php /home/panel/html/controller/member
wget https://github.com/xamjyss143/ocspaneltemplate/raw/master/helperconfigs.tar.gz && tar zxvf helperconfigs.tar.gz
mv configs.php /home/panel/html/controller/helper
wget https://github.com/xamjyss143/ocspaneltemplate/raw/master/modelconfigs.tar.gz && tar zxvf modelconfigs.tar.gz
mv configs.php /home/panel/html/model
wget https://github.com/xamjyss143/ocspaneltemplate/raw/master/controllerprofile.tar.gz && tar zxvf controllerprofile.tar.gz
mv profile.php /home/panel/html/controller/member
wget https://github.com/xamjyss143/ocspaneltemplate/raw/master/controllerhelperprofile.tar.gz && tar zxvf controllerhelperprofile.tar.gz
mv profile.php /home/panel/html/controller/helper
wget https://github.com/xamjyss143/ocspaneltemplate/raw/master/modelprofile.tar.gz && tar zxvf modelprofile.tar.gz
mv profile.php /home/panel/html/model
wget https://github.com/xamjyss143/ocspaneltemplate/raw/master/route.tar.gz && tar zxvf route.tar.gz
mv route.php /home/panel/html/config
mv assets /home/panel/html
mv view /home/panel/html

echo "XAMJYSSVPN Template Successfully Installed"
