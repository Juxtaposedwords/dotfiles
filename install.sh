#!/bin/bash
set -ev

for file in $HOME/.dotfiles/install.d/*.sh; do
  bash $file
done
