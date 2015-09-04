#!/bin/ bash
# Ignore if we're not on OSX
[[ "$OSTYPE" =~ ^darwin ]] || exit 0

# Show only active apps on teh dock
defaults write com.apple.dock static-only -bool TRUE; 
killall Dock

#Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

# Disable local Time Machine snapshots
sudo tmutil disablelocal

# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Empty Trash securely by default
defaults write com.apple.finder EmptyTrashSecurely -bool true

# Make Dock icons of hidden applications translucent
defaults write com.apple.dock showhidden -bool true

# Dim hidden apps
defaults write com.apple.dock showhidden -bool TRUE; killall Dock

# Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Faster Dock
defaults write com.apple.Dock autohide-delay -float 0.1
defaults write com.apple.dock autohide-time-modifier -float 0.5