#!/usr/bin/env bash
mkdir -p ~/.emacs.d
mkdir -p ~/.config/fish
ln -s /vagrant/provision/init.el ~/.emacs.d/
ln -s /vagrant/provision/fish/* ~/.config/fish/
