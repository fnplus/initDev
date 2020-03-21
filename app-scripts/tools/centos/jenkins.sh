#!/bin/bash
# Exit on any failure
set -e

# Checkin if Java is installed
if [ -n `which java` ]; then
    sudo yum install java-1.8.0-openjdk-devel
fi

# Check for curl, Installing if we don't have it
if [ ! -x /usr/bin/curl ]; then
    sudo apt-get install curl
fi

curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum install jenkins
