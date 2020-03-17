#!/bin/bash
# Exit on any failure
set -e

# Check for snap, Install if we don't have it
if [ ! -x /usr/bin/snapd ]; then
    sudo apt install snapd
fi
sudo snap install postman
