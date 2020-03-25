  
#!/bin/bash
echo "Removing Old Theme"
rm -rf /home/panel/html/assets
rm -rf /home/panel/html/view
rm -rf /home/panel/html/tmp/*
echo "Installing XAMJYSSVPN Template"
cd ~
mkdir xamjyss
cd xamjyss
rm -rf *
wget https://github.com/xamjyss143/ocspaneltemplate/raw/master/xamjyss.tar.gz && tar zxvf xamjyss.tar.gz
mv assets /home/panel/html
mv view /home/panel/html
echo "XAMJYSSVPN Template Successfully Installed"
