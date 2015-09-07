#!/bin/bash
# Ignore if we're not on OSX
[[ "$OSTYPE" =~ ^darwin ]] || exit 0
echo "Pianobar Configuration:"
read -e -p "Enter your Pandora Password" PANDORA_PASSWORD
sed "s/password\ =\ .*/password\ =\  $PANDORA_PASSWORD" $HOME/.config/pianobar/config
