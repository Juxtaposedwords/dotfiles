#!/bin/bash
# Ignore if we're not on OSX
# Stolen from https://gist.github.com/iainconnor/f9d4964ea4211e794d1dj
[[ "$OSTYPE" =~ ^darwin ]] || exit 0
# Setup Git.
read -e -p "Enter your git username: " USERNAME
read -e -p "Enter your git email address: " EMAIL
read -e -p "Enter your github homebrew token." GITHUB_HOMEBREW_TOKEN
if HOMEBREW_GITHUB_API_TOKEN != ""; then
	export HOMEBREW_GITHUB_API_TOKEN
fi

sed -i "s/\(token\ =\ \).*/\1$HOMEBREW_GITHUB_API_TOKEN/" $HOME/.gitconfig


git config --global user.name $USERNAME
git config --global user.email $EMAIL
