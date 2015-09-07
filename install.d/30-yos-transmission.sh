#!/bin/bash
# Ignore if we're not on OSX
[[ "$OSTYPE" =~ ^darwin ]] || exit 0


### Transmission ###
# Use `~/Documents/Torrents` to store incomplete downloads
mkdir -p ~/Downloads/Torrents/Incomplete
mkdir -p ~/Downloads/Torrents/Complete
defaults write org.m0k.transmission UseIncompleteDownloadFolder -bool true
defaults write org.m0k.transmission IncompleteDownloadFolder -string "${HOME}/Downloads/Torrents/Incomplete"

# Don’t prompt for confirmation before downloading
defaults write org.m0k.transmission DownloadAsk -bool false

# Trash original torrent files
defaults write org.m0k.transmission DeleteOriginalTorrent -bool true

# Hide the donate message
defaults write org.m0k.transmission WarningDonate -bool false
# Hide the legal disclaimer
defaults write org.m0k.transmission WarningLegal -bool false

