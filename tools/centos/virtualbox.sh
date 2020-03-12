#!/bin/bash
# Exit on any failure
set -e

# Checking if wget is installed
if [ ! -x /usr/bin/wget ] ; then
    # Installing wget                                                                          
    yum -y wget
fi

# Installing virtualbox
sudo yum install patch gcc kernel-headers kernel-devel make
sudo wget https://download.virtualbox.org/virtualbox/rpm/el/virtualbox.repo -P /etc/yum.repos.d
sudo yum install virtualbox-6.0
