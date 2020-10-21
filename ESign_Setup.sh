#!/bin/bash

#This script should set up all of the dependencies needed for the PlanetESign digital signage players on Debian/Raspian

echo "Running as "$(whoami)

if [ $(whoami) != "root" ];
then
    echo "Please run with sudo!"
    exit 3

fi


# Install node.js

apt-install curl -y
curl -sL https://deb.nodesource.com/setup_10.x | sudo bash -
apt-install nodejs -y

# Install the ESign client

apt-install wget -y
apt-install npm 
npm install -g node-gyp
wget -vO- https://planetesteam.co.uk/files/install_esign.sh | bash -
reboot