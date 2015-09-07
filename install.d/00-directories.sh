#!/bin/bash
mkdir -p $HOME/.shellrc
mkdir -p $HOME/Downloads/Torrents
mkdir -p $HOME/Downloads/Chrome
mkdir -p $HOME/Downloads/Firefox
mkdir -p $HOME/Downloads/Personal/Development
mkdir -p $HOME/Downloads/Professional
mkdir -p $HOME/Dropbox
mkdir -p $HOME/Google\ Drive
mkdir -p $HOME/.shellrc
cp -rn $HOME/homeConfigFiles/.config $HOME/.config
cp  $HOME/.dotfiles/homeConfigFiles/bashrc $HOME/.bashrc
cp  $HOME/.dotfiles/homeConfigFiles/bash_profile $HOME/.bash_profile
cp -rn $HOME/homeConfigFiles/.ssh $HOME/.ssh
cp  $HOME/.dotfiles/homeConfigFiles/.gitconfig $HOME/.gitconfig
ln -s $HOME/.dotfiles/.shellrc/bashrc.d $HOME/.shellrc/bashrc.d 
ln -s $HOME/.dotfiles/bin $HOME/.shellrc/bin 
ln -s $HOME/.dotfiles/homeConfigFiles/.vimrc $HOME/.vimrc 
