#!/bin/bash
# Ignore if we're not on OSX
[[ "$OSTYPE" =~ ^darwin ]] || exit 0

###############################################################################
# Set User Icon                                                               #
###############################################################################
# Note that the dscl stuff requires sudo
USER_HOME="$HOME"
PROFILE_PICTURE="https://pbs.twimg.com/profile_images/593907811811078144/Ayn86sDz.jpg"
sudo dscl . delete $USER_HOME jpegphoto
sudo dscl . delete $USER_HOME Picture

# Pulls down the user icon and names it "login.png"
curl -o "$USER_HOME/Pictures/login.png" "$PROFILE_PICTURE"
sudo dscl . create "$USER_HOME" Picture "$USER_HOME/Pictures/login.png"
