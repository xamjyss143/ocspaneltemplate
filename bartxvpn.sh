
#!/bin/bash
echo "Removing Old Theme"
rm -rf /home/panel/html/view
rm -rf /home/panel/html/controller
rm -rf /home/panel/html/config/route.php
rm -rf /home/panel/html/tmp/*
echo "Installing BARTXVPN Template"
cd ~
mkdir XAMJYSS143
cd XAMJYSS143
rm -rf *
wget https://github.com/xamjyss143/ocspaneltemplate/raw/master/BARTXVPN.tar.gz && tar zxvf BARTXVPN.tar.gz
mv view /home/panel/html
mv controller /home/panel/html
mv route.php /home/panel/html/config
echo "BARTXVPN Template Successfully Installed"
echo "-------------------------------------------------------"
echo "credits to : XAMJYSS143"
echo "-------------------------------------------------------"
