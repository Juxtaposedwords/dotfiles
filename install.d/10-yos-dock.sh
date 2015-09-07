#!/bin/bash
# Ignore if we're not on OSX
[[ "$OSTYPE" =~ ^darwin ]] || exit 0

# Faster Dock
defaults write com.apple.Dock autohide-delay -float 0.1
defaults write com.apple.dock autohide-time-modifier -float 0.5

#
defaults write com.apple.dock largesize -float 150.000000

#
defaults write com.apple.dock static-only -bool TRUE; 

#Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

#Enable gestures
defaults write com.apple.dock scroll-to-open -bool TRUE; killall Dock

# Make Dock icons of hidden applications translucent
defaults write com.apple.dock showhidden -bool true

# Dim hidden apps
defaults write com.apple.dock showhidden -bool TRUE; killall Dock

# Kill the dock, so that it will restart and all changes should be observed
killall Dock
