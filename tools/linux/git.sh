#!/bin/bash
# Exit on any failure
set -e


#!/bin/bash
# Exit on any failure
set -e

# Check for type of linux system
pkm="not applicable"
if [ -f /etc/debian_version ]; then
    pkm="apt-get"
else
    pkm="yum"
fi
if [ "$pkm" == "not applicable" ]; then
    echo "We are sorry! Your distro is not supported.(Yet)\n
    Raise an Issue at https://github.com/fnplus/initDev/issues"
    exit 1
fi

echo "Updating package lists"
sudo $pkm update -y
echo "Installing git..."
sudo $pkm install git -y
