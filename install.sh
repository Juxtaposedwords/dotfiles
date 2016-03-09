#!/bin/bash
set -ev

# here we go and iterate over all the shell scripts in the install.d file and run them
for file in $HOME/.dotfiles/install.d/*.sh; do
  bash $file
done
