#!/bin/bash
# Exit on any failure
set -e

# Installing Dependencies
sudo apt install ca-certificates curl openssh-server postfix

cd /tmp
curl -LO https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh
sudo bash /tmp/script.deb.sh
sudo apt install gitlab-ce