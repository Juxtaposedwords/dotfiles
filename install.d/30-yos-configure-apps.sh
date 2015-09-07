#!/bin/ bash
# Ignore if we're not on OSX
[[ "$OSTYPE" =~ ^darwin ]] || exit 0

# Let's open up Dropbox and Configure it
open $HOME/Applications/Dropbox.app

# Let's  open up Google Drive!
open $HOME/Applications/Google\ Drive.app

# Now we did ALL this JUST to get KeePassX...
open $HOME/Applications/KeePassX.app

echo -n "Paste your private github ssh key and press [ENTER]: "
read GITHUB_SSH_KEY

echo GITHUB_SSH_KEY > ~/.ssh/github_ssh_key