#!/bin/bash
# Exit on any failure
set -e

# Installing Dependencies
sudo yum install curl policycoreutils-python openssh-server

# Installing postfix for GitLab to be able to send notification emails
sudo yum install postfix
sudo systemctl start postfix
sudo systemctl enable postfix

# Installing Gitlab
curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.rpm.sh | sudo bash
sudo yum install gitlab-ce