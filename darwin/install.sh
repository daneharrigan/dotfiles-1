#!/bin/bash

#echo "Installing Xcode"
#xcode-select --install 2> /dev/null
#
#echo "Installing Homebrew"
#/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
#
#echo "Installing Homebrew casks"
#brew bundle install
#
#echo "Installing ansible"
#pip3 install ansible

chsh -s /usr/local/bin/zsh
PATH=$(pip3 show ansible | grep Location | cut -d " " -f 2):$PATH
ansible-playbook -K main.yaml
