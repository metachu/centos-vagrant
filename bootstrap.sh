#!/usr/bin/env bash
cd /etc/yum.repos.d/
sudo wget http://download.opensuse.org/repositories/shells:fish:release:2/CentOS_7/shells:fish:release:2.repo

cd ~
sudo yum update -y
sudo yum install -y epel-release
sudo yum install -y emacs-nox git python-pip htop golang mosh fish vim-enhanced
sudo pip install ipython 

sudo yum remove -y firewalld

mkdir -p ~/git
cd ~/git
git clone https://github.com/metachu/centos-vagrant .


mkdir -p ~/.emacs.d
ln -s /home/vagrant/git/centos-vagrant/provision/init.el ~/.emacs.d/

mkdir -p ~/.config/fish
ln -s /home/vagrant/git/centos-vagrant/provision/fish/* ~/.config/fish/

git config --global user.name "William Chu"
git config --global user.email "chudood@gmail.com" 

echo "vagrant" | sudo passwd --stdin vagrant
su vagrant << EOF
set GOPATH=/home/vagrant/go
mkdir -p /home/vagrant/go
go get -u github.com/nsf/gocode
go get -u github.com/rogpeppe/godef
EOF 
sudo chsh -s /usr/bin/fish vagrant

