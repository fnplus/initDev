#!/bin/bash
# Exit on any failure
set -e

# Check for wget, Installing if we don't have it
if [ ! -x /usr/bin/wget ]; then
    sudo apt-get install wget
fi

wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins
