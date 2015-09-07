#!/bin/bash
mkdir -p $HOME/.shellrc
mkdir -p $HOME/Downloads/Torrents
mkdir -p $HOME/Downloads/Chrome
mkdir -p $HOME/Downloads/Firefox
mkdir -p $HOME/Downloads/Personal/Development
mkdir -p $HOME/Downloads/Professional
mkdir -p $HOME/Dropbox
mkdir -p $HOME/Google\ Drive
mkdir -p $HOME/.ssh
cp -rn homeConfigFiles/.config $HOME/.config
#ln -s homeConfigFiles/bashrc $HOME/.bashrc
#cp homeConfigFiles/bash_profile $HOME/.bash_profile
cp -rn homeConfigFiles/.ssh $HOME/.ssh
cp -r $HOME/github
ln -s $HOME/.shellrc/bashrc.d $HOME/.dotfiles/.shellrc/bashrc.d
ln -s $HOME/.shellrc/bin $HOME/.dotfiles/bin
ln -s $HOME/.vimrc $HOME/homeConfigFiles/.vimrc
