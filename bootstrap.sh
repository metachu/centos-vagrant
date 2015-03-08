#!/usr/bin/env bash
cd /etc/yum.repos.d/
sudo wget http://download.opensuse.org/repositories/shells:fish:release:2/CentOS_7/shells:fish:release:2.repo
cd ~
sudo yum update -y
sudo yum install -y epel-release
sudo yum install -y emacs-nox git python-pip htop golang mosh fish
sudo pip install ipython 

sudo chsh -s /usr/bin/fish vagrant

mkdir -p ~/.config/fish


