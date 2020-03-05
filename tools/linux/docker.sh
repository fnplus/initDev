#!/bin/bash
# Exit on any failure
set -e

# Check for type of linux system
pkm="not applicable"
if [ -f /etc/debian_version ]; then
    pkm="apt-get"

    # Check for curl, Install if we don't have it
    if [ ! -x /usr/bin/curl ]; then
        sudo $pkm install curl
    fi

    # Installing Docker (Ubuntu)
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
    sudo $pkm update -y
    sudo apt-cache policy docker-ce
    sudo $pkm -y install docker-ce
    sudo usermod -aG docker ${USER}
    su - ${USER}
else
    pkm="yum"
    sudo $pkm update -y
    sudo $pkm install docker -y
fi
if [ "$pkm" == "not applicable" ]; then
    echo "We are sorry! Your distro is not supported.(Yet)\n
    Raise an Issue at https://github.com/fnplus/initDev/issues"
    exit 1
fi
