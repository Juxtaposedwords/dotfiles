#!/usr/bin/env bash
set -v
if  [[ test ! $(which git); )]] && [[ "$OSTYPE" =~ ^darwin ]]; then
# make sure we have xcode...homebrew requires
xcode-select --install

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing sudo time stamp if set, otherwise do nothing.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
  brew update
  brew install git
elif  ( test ! $(which brew); ) &&  [ -f /etc/debian_version ]; then
  apt-get update
  apt-get install git -y
fi

if [ ! -d "$HOME/dotfiles/.git" ]; then
  git clone https://github.com/juxtaposedwords/dotfiles $HOME/dotfiles
  cd $HOME/dotfiles
else 
  cd $HOME/dotfiles
  git remote set-url origin https://github.com/Juxtaposedwords/dotfiles
  git reset --hard origin/master
fi
 git pull origin master
 bash install.sh
