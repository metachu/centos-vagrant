#!/usr/bin/env bash
cd /etc/yum.repos.d/
sudo wget http://download.opensuse.org/repositories/shells:fish:release:2/CentOS_7/shells:fish:release:2.repo
cd ~
sudo yum update -y
sudo yum install -y epel-release
sudo yum install -y emacs-nox git python-pip htop golang mosh fish
sudo pip install ipython 


mkdir -p ~/.config/fish
ln -s /vagrant/provision/fish/* ~/.config/fish/

mkdir -p ~/.emacs.d
ln -s /vagrant/provision/init.el ~/.emacs.d/


sudo chsh -s /usr/bin/fish vagrant
