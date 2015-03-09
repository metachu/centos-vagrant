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


git config --global user.name "William Chu"
git config --global user.email "chudood@gmail.com" 

echo "vagrant" | sudo passwd --stdin vagrant
sudo chsh -s /usr/bin/fish vagrant
