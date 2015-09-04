#!/usr/bin/env bash
set -ve
for file in $HOME/dotfiles/install.d/*.sh; do
  bash $file
done
