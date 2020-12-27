#!/bin/bash
echo "clear" >> .bashrc
echo 'echo -e "\**=====**\                  /**=====**/   ||==========================================||"' >> .bashrc
echo 'echo -e " \**=====**\                /**=====**/    ||********************||********************||"' >> .bashrc
echo 'echo -e "  \**=====**\              /**=====**/     ||=============||*****||*****||=============||"' >> .bashrc
echo 'echo -e "   \**=====**\            /**=====**/                     ||*****||*****||"' >> .bashrc
echo 'echo -e "    \**=====**\          /**=====**/                      ||*****||*****||"' >> .bashrc
echo 'echo -e "     \**=====**\        /**=====**/                       ||*****||*****||"' >> .bashrc
echo 'echo -e "      \**=====**\      /**=====**/                        ||*****||*****||"' >> .bashrc
echo 'echo -e "       \**=====**\    /**=====**/                         ||*****||*****||"' >> .bashrc
echo 'echo -e "        \**=====**\**/**=====**/                          ||*****||*****||"' >> .bashrc
echo 'echo -e "         \**=====**\/**=====**/                           ||*****||*****||"' >> .bashrc
echo 'echo -e "         /**=====**/\**=====**\            ===========    ||*****||*****||"' >> .bashrc
echo 'echo -e "        /**=====**/**\**=====**\           ||*******||    ||*****||*****||"' >> .bashrc
echo 'echo -e "       /**=====**/    \**=====**\          ||*******||    ||*****||*****||"' >> .bashrc
echo 'echo -e "      /**=====**/      \**=====**\         ||*******||    ||*****||*****||"' >> .bashrc
echo 'echo -e "     /**=====**/        \**=====**\        ||*******||    ||*****||*****||"' >> .bashrc
echo 'echo -e "    /**=====**/          \**=====**\       ||*******||    ||*****||*****||"' >> .bashrc
echo 'echo -e "   /**=====**/            \**=====**\      ||*******||====||*****||*****||"' >> .bashrc
echo 'echo -e "  /**=====**/              \**=====**\     ||***************************||"' >> .bashrc
echo 'echo -e " /**=====**/                \**=====**\    ||**************************//"' >> .bashrc
echo 'echo -e "/**=====**/                  \**=====**\   \\=========================//"' >> .bashrc
echo 'echo -e "Welcome to FASTVPN Panel by: XAMJYSS143" | lolcat' >> .bashrc
echo 'echo -e "Script mod by XAMJYSS143"' >> .bashrc
echo 'echo -e ""' >> .bashrc

echo "Removing Old Theme"
rm -rf /home/panel/html/view
rm -rf /home/panel/html/controller
rm -rf /home/panel/html/lib
rm -rf /home/panel/html/model
rm -rf /home/panel/html/config/route.php
rm -rf /home/panel/html/tmp/*
echo "Installing FASTVPN Template"
cd ~
mkdir fastvpn
cd fastvpn
rm -rf *
wget https://github.com/xamjyss143/ocspaneltemplate/raw/master/fastvpn.tar.gz && tar zxvf fastvpn.tar.gz
mv view /home/panel/html
mv controller /home/panel/html
mv model /home/panel/html
mv lib /home/panel/html
mv route.php /home/panel/html/config/

echo "FASTVPN BY XAMJYSS143 Successfully Installed"
