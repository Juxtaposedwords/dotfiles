#!/bin/bash
mkdir -p $HOME/Downloads/Torrents/Incomplete
mkdir -p $HOME/Downloads/Torrents/Complete
mkdir -p $HOME/Downloads/Chrome
mkdir -p $HOME/Downloads/Firefox
mkdir -p $HOME/Documents/Personal/Development
mkdir -p $HOME/Documents/Professional
mkdir -p $HOME/Dropbox
mkdir -p $HOME/Google\ Drive
mkdir -p $HOME/.shellrc
cp -rn $HOME/.dotfiles/homeConfigFiles/.config $HOME/.config
cp  $HOME/.dotfiles/homeConfigFiles/bashrc $HOME/.bashrc
cp  $HOME/.dotfiles/homeConfigFiles/bash_profile $HOME/.bash_profile
cp -rn $HOME/.dotfiles/homeConfigFiles/.ssh $HOME/.ssh
cp  $HOME/.dotfiles/homeConfigFiles/.gitconfig $HOME/.gitconfig
