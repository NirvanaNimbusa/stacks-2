#!/bin/bash

RED='\033[0;31m'
BLUE='\033[40;38;5;82m'
PURPLE='\033[0;35m'



echo "***** Installing Apache, MySQL and PHP for Mac OSX ********"
sleep 2

echo -e  "Checking for Apache Server"
sleep 2
if [ $(find /etc/ -name apache2) ]
then
    echo -e " ${RED} You have apache2 server installed! \033[0m"
else
    echo -e " ${BLUE} Installing Apache2 Server"
    sleep 2
    sudo brew install httpd && sudo brew services start httpd
    echo -e  " ${BLUE} Apache server has been installed! \033[0m"
    
fi

echo  "Checking for MySQL Server"
sleep 2
if [ $(find /etc/ -name mariadb) ]
then
    echo -e  " ${RED} You have MySQL server installed! \033[0m"
else
    echo -e " ${BLUE} Installing MySQL Server"
    sleep 2
    sudo brew install mariadb && sudo brew services start mariadb
    echo -e  " ${BLUE} MySQL server has been installed! \033[0m"
    
fi

echo  "Checking for PHP"
sleep 2
if [ $(sudo find /etc/alternatives/ -name php) ]
then
    echo -e " ${RED} You have PHP installed! \033[0m"
else
    echo -e " ${BLUE} Installing PHP"
    sleep 2
    sudo brew install php && sudo brew services start php
    echo -e  " ${BLUE} PHP has been installed! \033[0m "
    
fi

echo Done
echo -e " ${BLUE} Tweet me @odirionyeo \033[0m"




