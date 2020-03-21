#!/bin/bash

# Exit on any failure
set -e

# Update package lists
echo "# Updating package lists"
sudo apt-add-repository -y ppa:git-core/ppa
sudo apt-get update

# Check for wget,
# Install if we don't have it
if [ ! -x /usr/bin/wget ]; then
    sudo apt-get install wget
fi

# Check for curl,
# Install if we don't have it
if [ ! -x /usr/bin/curl ]; then
    sudo apt-get install curl
fi

# Installing additional packages
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

# Installing Git
sudo apt-get install -y git

# Installing Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt-get update
sudo apt-cache policy docker-ce
sudo apt-get -y install docker-ce
sudo usermod -aG docker ${USER}

# Installing Vim, openssh, php, heroku, virtualbox
sudo apt-get install vim -y
sudo apt install --assume-yes openssh-server -y
sudo add-apt-repository ppa:ondrej/php -y
sudo wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
sudo apt-get install virtualbox -y

# Installing Java
sudo apt-get install default-jre -y
sudo apt-get install default-jdk -y

# Installing Sublime Text3
sudo add-apt-repository ppa:webupd8team/sublime-text-3 -y
sudo apt-get install sublime-text-installer -y

# Installing Atom
sudo apt install software-properties-common apt-transport-https wget -y
wget -q https://packagecloud.io/AtomEditor/atom/gpgkey -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main"
sudo apt install atom -y
sudo apt install virtualbox -y
