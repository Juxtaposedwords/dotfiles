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


# Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

###############################################################################
# Mice, keyboard, etc                                                         #
###############################################################################
# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 0

# disable Natural scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false


###############################################################################
# Screen                                                                      #
###############################################################################

# Require password for login
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0


#Enable gestures
defaults write com.apple.dock scroll-to-open -bool TRUE; killall Dock

# Restart automatically if the computer freezes
sudo systemsetup -setrestartfreeze on

# Never go into computer sleep mode
sudo systemsetup -setcomputersleep Off > /dev/null

# Check for software updates daily, not just once per week
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1



###############################################################################
# UI/UX                                                                       #
###############################################################################
# Faster Dock
defaults write com.apple.Dock autohide-delay -float 0.1
defaults write com.apple.dock autohide-time-modifier -float 0.5
defaults write com.apple.dock largesize -float 150.000000

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# Save to disk (not to iCloud) by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Disable Resume system-wide
defaults write com.apple.systempreferences NSQuitAlwaysKeepsWindows -bool false

# Disable automatic termination of inactive apps
defaults write NSGlobalDomain NSDisableAutomaticTermination -bool true

# Disable the crash reporter
defaults write com.apple.CrashReporter DialogType -string "none"

# Restart automatically if the computer freezes
sudo systemsetup -setrestartfreeze on

# Increase window resize speed for Cocoa applications
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001



###############################################################################
# Finder                                                                      #
###############################################################################
# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Finder: allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

# Display full POSIX path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

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

# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Automatically open a new Finder window when a volume is mounted
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true

# Disable the warning before emptying the Trash
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# Empty Trash securely by default
defaults write com.apple.finder EmptyTrashSecurely -bool true

###############################################################################
# Power Settings                                                              #
###############################################################################
# Power Settings for all Users (Display Sleep, Workstation Sleep, Wake for network access) (Pmset -a = All Power modes | Pmset -c = A/C Power | Pmset -b = Battery Power)
# to copy preferences in a less painful manner: "pmset -g" awk 1 ORS='' | tr -s ' ' > ~/FileToEdit (note: you will need to prune some of the output)
# this will set up the battery settings
sudo pmset -b standbydelay 10800 standby 1 halfdim 1 hibernatefile /var/vm/sleepimage darkwakes 0 disksleep 0 sleep 0 autopoweroffdelay 14400 hibernatemode 3 autopoweroff 1 ttyskeepawake 1 displaysleep 0

# This will set up the ac power settings
sudo pmset -a standbydelay 10800 standby 1 halfdim 1 darkwakes 0 disksleep 0 sleep 0 autopoweroffdelay 14400 hibernatemode 3 autopoweroff 1 ttyskeepawake 1 displaysleep 0 acwake 0 lidwake 1



