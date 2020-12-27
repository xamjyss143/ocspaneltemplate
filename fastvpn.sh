#!/bin/bash
printf "Please Enter OCS Panel Details:\n\n"
read -p 'Database Username(root): ' user
read -sp 'Database root Password: ' pass
printf "\n"
read -p 'Database Name: ' name
read -sp 'test $name: ' test
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

uid="test"
 cat <<'reset_server' > /home/panel/html/server_reset.php
<?php
     $servername = "localhost";
     $username = "$uid"; //db_username
     $password = "$pass"; //db_password
     $dbname = "$name"; //database_name
     
     // Create connection
     $conn = new mysqli($servername, $username, $password, $dbname);
     // Check connection
     if ($conn->connect_error) {
         die("Connection failed: " . $conn->connect_error);
     }

     $update = "UPDATE server SET created = '0' WHERE id >= 1";
     $result = mysqli_query($conn, $update);
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
