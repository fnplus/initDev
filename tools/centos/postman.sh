#!/bin/bash
# Exit on any failure
set -e

# Installing Snap which is required to install postman
if ! [ -x "$(command -v snapd)" ]; then
    sudo yum install epel-release
    sudo yum install snapd
    sudo systemctl enable --now snapd.socket
    sudo ln -s /var/lib/snapd/snap /snap
fi

# Installing postman
sudo snap install postman
