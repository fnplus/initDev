#!/bin/bash
# Exit on any failure
set -e

sudo add-apt-repository multiverse && sudo apt-get update
sudo apt install virtualbox -y
