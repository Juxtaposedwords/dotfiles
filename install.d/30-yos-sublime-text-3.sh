#!/bin/bash
# Ignore if we're not on OSX
[[ "$OSTYPE" =~ ^darwin ]] || exit 0

# Configure our sublime to use the wbond package manager
curl -o ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages/Package\ Control.sublime-package https://sublime.wbond.net/Package%20Control.sublime-package $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages
