#!/bin/bash
set -v

if [[ "$OSTYPE" =~ ^darwin ]]; then
  # make sure we have xcode...so we can have a barebones git
  xcode-select --install

  # Ask for the administrator password upfront.
  #  I've used this as a gating process 
  echo "Do not enter your password until xcode has finished. "
  sudo -v

elif  ( test ! $(which brew); ) &&  [ -f /etc/debian_version ]; then
  apt-get update
  apt-get install git -y
fi

if [ ! -d "$HOME/.dotfiles/.git" ]; then
  git clone git://github.com/juxtaposedwords/dotfiles $HOME/.dotfiles
  cd $HOME/.dotfiles
else 
  cd $HOME/.dotfiles
  git remote set-url origin https://github.com/Juxtaposedwords/dotfiles
  git reset --hard origin/master
fi
sudo -v
git pull origin master
bash install.sh
