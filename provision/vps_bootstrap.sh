#!/usr/bin/env bash
mkdir -p ~/.emacs.d
ln -s init.el ~/.emacs.d/
mkdir -p ~/.config/
ln -s fish ~/.config/

cd /etc/yum.repos.d/
wget http://download.opensuse.org/repositories/shells:fish:release:2/CentOS_7/shells:fish:release:2.repo

yum update -y
yum install -y epel-release
yum install -y emacs-nox git python-pip htop golang mosh fish vim-enhanced nginx

sudo pip install ipython 

mkdir -p ~/go
export GOPATH=~/go
go get -u github.com/nsf/gocode
go get -u github.com/rogpeppe/godef

git config --global user.name "William Chu"
git config --global user.email "chudood@gmail.com" 

chsh -s /usr/bin/fish
