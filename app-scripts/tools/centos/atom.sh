#!/bin/bash
# Exit on any failure
set -e

if [ ! -x /usr/bin/wget ]; then
    sudo apt-get install wget
fi

# Installing Atom
sudo apt install software-properties-common apt-transport-https wget -y
wget -q https://packagecloud.io/AtomEditor/atom/gpgkey -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main"
sudo apt install atom -y
