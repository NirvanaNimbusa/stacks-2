#!/bin/bash

#colors
RED='\033[0;31m'
BLUE='\033[40;38;5;82m'
PURPLE='\033[0;35m'

#version
NODEJS_VERSION='10'
MONGODB_VERSION='3.6'




echo "***** Installing MongoDB, Nextjs and NodeJS ********"
sleep 2


echo -e  "Checking for Nodejs"
sleep 2

if [ -x "$(command -v node)" ];
then
    echo -e " ${RED} You have NodeJS installed! \e[0m"
else
    echo -e " ${BLUE} Installing Nodejs and npm "
    sleep 2
    brew install node@${NODEJS_VERSION}
    
fi

echo  "Checking for Create-Next-app(React)"
sleep 2

if [ -x "$(command -v create-next-app)" ];
then
    echo -e  " ${RED} You have Create-Next-app(React) installed! \e[0m"
else
    echo -e " ${BLUE} Installing Angular"
    sleep 2
    npm install -g create-next-app
    echo -e  " ${BLUE} Create-Next-app(React) has been installed! \e[0m"
    
fi

echo  "Checking for MongoDB"
sleep 2
if [ -x "$(command -v mongo)" ];
then
    echo -e " ${RED} You have MongoDB database Installed! \e[0m"
else
    echo -e " ${BLUE} Installing MongoDB "
    sleep 2
    brew tap mongodb/brew && \
    brew install mongodb-community@${MONGODB_VERSION} && \
    brew services start mongodb-community
    echo -e  " ${BLUE} MongoDB has been installed! \e[0m "
    
fi

echo Done
echo -e " ${BLUE} Tweet me @_nerdeveloper \e[0m"




