#!/bin/bash
echo "Before we start, we might need your OCS panel Credentials to Continue:"

read -p 'Database Username: root' db_user
read -sp 'Database root password: ' db_pass
read -p 'Database Name: root' db_name

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
mv route.php /home/panel/html/config
mv server_reset.php /home/panel/html

 cat <<'reset_server' > /home/panel/html/server_reset.php
 <?php
$servername = "localhost";
$username = "$db_user";
$password = "$db_pass";
$dbname = "$db_name";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
reset_server

echo "FASTVPN BY XAMJYSS143 Successfully Installed"

echo "clear" >> .bashrc
echo 'echo -e "\\**=====**\\                  //**=====**//   ||==========================================||"' >> .bashrc
echo 'echo -e " \\**=====**\\                //**=====**//    ||******************************************||"' >> .bashrc
echo 'echo -e "  \\**=====**\\              //**=====**//     ||=============||*****||*****||=============||"' >> .bashrc
echo 'echo -e "   \\**=====**\\            //**=====**//                     ||*****||*****||"' >> .bashrc
echo 'echo -e "    \\**=====**\\          //**=====**//                      ||*****||*****||"' >> .bashrc
echo 'echo -e "     \\**=====**\\        //**=====**//                       ||*****||*****||"' >> .bashrc
echo 'echo -e "      \\**=====**\\      //**=====**//                        ||*****||*****||"' >> .bashrc
echo 'echo -e "       \\**=====**\\    //**=====**//                         ||*****||*****||"' >> .bashrc
echo 'echo -e "        \\**=====**\\\///**=====**//                          ||*****||*****||"' >> .bashrc
echo 'echo -e "         \\**=====**\==/**=====**//                           ||*****||*****||"' >> .bashrc
echo 'echo -e "         //**=====**/==\**=====**\\            ===========    ||*****||*****||"' >> .bashrc
echo 'echo -e "        //**=====**///\\\**=====**\\           ||*******||    ||*****||*****||"' >> .bashrc
echo 'echo -e "       //**=====**//    \\**=====**\\          ||*******||    ||*****||*****||"' >> .bashrc
echo 'echo -e "      //**=====**//      \\**=====**\\         ||*******||    ||*****||*****||"' >> .bashrc
echo 'echo -e "     //**=====**//        \\**=====**\\        ||*******||    ||*****||*****||"' >> .bashrc
echo 'echo -e "    //**=====**//          \\**=====**\\       ||*******||    ||*****||*****||"' >> .bashrc
echo 'echo -e "   //**=====**//            \\**=====**\\      ||*******||====||*****||*****||"' >> .bashrc
echo 'echo -e "  //**=====**//              \\**=====**\\     ||***************************||"' >> .bashrc
echo 'echo -e " //**=====**//                \\**=====**\\    ||**************************//"' >> .bashrc
echo 'echo -e "//**=====**//                  \\**=====**\\   \\=========================//"' >> .bashrc
echo 'echo -e ""' >> .bashr
echo 'echo -e "Welcome to FASTVPN Panel by: XAMJYSS143" | lolcat' >> .bashrc
echo 'echo -e "Script mod by XAMJYSS143"' >> .bashrc
echo 'echo -e ""' >> .bashrc
