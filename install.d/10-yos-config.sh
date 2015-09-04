#!/bin/bash
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

# disable Natural scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# Require password for login
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0


# Power Settings for all Users (Display Sleep, Workstation Sleep, Wake for network access) (Pmset -a = All Power modes | Pmset -c = A/C Power | Pmset -b = Battery Power)
# to copy preferences in a less painful manner: "pmset -g" awk 1 ORS='' | tr -s ' ' > ~/FileToEdit (note: you will need to prune some of the output)
# this will set up the battery settings
sudo pmset -b standbydelay 10800 standby 1 halfdim 1 hibernatefile /var/vm/sleepimage darkwakes 0 disksleep 0 sleep 0 autopoweroffdelay 14400 hibernatemode 3 autopoweroff 1 ttyskeepawake 1 displaysleep 0

# This will set up the ac power settings
sudo pmset -a standbydelay 10800 standby 1 halfdim 1 darkwakes 0 disksleep 0 sleep 0 autopoweroffdelay 14400 hibernatemode 3 autopoweroff 1 ttyskeepawake 1 displaysleep 0 acwake 0 lidwake 1



