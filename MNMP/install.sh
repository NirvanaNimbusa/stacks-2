#!/bin/bash

RED='\033[0;31m'
BLUE='\033[40;38;5;82m'
PURPLE='\033[0;35m'



echo "***** Installing Nginx, MySQL and PHP for Mac OSX ********"
sleep 2

echo -e  "Checking Nginx Server"
sleep 2
if [ $(find /etc/ -name nginx) ]
then
    echo -e " ${RED} You have nginx server installed! \033[0m"
else
    echo -e " ${BLUE} Installing Nginx Server"
    sleep 2
    sudo brew install nginx && sudo brew services start nginx
    echo -e  " ${BLUE} Nginx Server has been installed! \033[0m"
    
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




