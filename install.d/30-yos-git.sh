#!/bin/bash
# Stolen from https://gist.github.com/iainconnor/f9d4964ea4211e794d1dj
# Setup Github.
read -e -p "Enter your github username: " USERNAME
read -e -p "Enter your github email address: " EMAIL

if ! [ -f $HOME/.ssh/id_rsa ]; then
	read -e -p "Eneter your github ssh key." GITHUB_SSH_KEY
	echo $GITHUB_SSH_KEY > $HOME/.ssh/id_rsa
fi

read -e -p "Enter your github homebrew token." GITHUB_HOMEBREW_TOKEN
if $HOMEBREW_GITHUB_API_TOKEN != ""; then
	export $HOMEBREW_GITHUB_API_TOKEN
fi
git config --global user.name $USERNAME
git config --global user.email $EMAIL
