#!/bin/bash
# Exit on any failure
set -e

# Check for curl, Install if we don't have it
if [ ! -x /usr/bin/curl ]; then
    sudo apt-get install curl
fi

# Installing Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt-get update -y
sudo apt-cache policy docker-ce
sudo apt-get -y install docker-ce
sudo usermod -aG docker ${USER}
su - ${USER}
