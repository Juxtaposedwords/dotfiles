#!/bin/bash
# Ignore if we're not on OSX
[[ "$OSTYPE" =~ ^darwin ]] || exit 0

# Keep-alive: update existing sudo time stamp if set, otherwise do nothing.
 while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# make sure we have xcode...homebrew requires
if test ! $(which brew); then
   echo "Installing homebrew..."
   ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Ask for the administrator password upfront.
sudo -v

brew doctor

# Setup Homebrew Cask.
brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions
brew tap homebrew/dupes
brew tap homebrew/versions
brew tap homebrew/services
brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup

# Install more recent versions of some OS X tools
brew tap homebrew/dupes



# Upgrade any already-installed formulae.
brew upgrade

# Make sure we’re using the latest Homebrew.
brew update

# Let's get the latest bash
brew install bash
brew install bash-completion2


# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils --with-default-names

# Install more recent versions of some OS X tools and #JustSysAdminThings
brew install vim --override-system-vi
brew install gnu-indent --with-default-names
brew install gnu-sed --with-default-names
brew install gnutls --with-default-names
brew install gnu-tar --with-default-names
brew install gnu-which --with-default-names
brew install grep --with-defualt-names
brew install gawk
brew install tree
brew install htop
brew install git
brew install wget

# Install some recreational stuff
brew install terminal-notifier
brew install pianobar

# This will install all the stuff we need for reasons
brew cask install google-chrome
brew cask install google-chrome-canary
brew cask install dropbox
brew cask install shiftit
brew cask install viscosity
brew cask install alfred
brew cask install google-drive
brew cask install skype
brew cask install transmission
brew cask install firefox-aurora
brew cask install sublime-text3
brew cask install keepassx
brew cask install caskroom/homebrew-versions/java6
brew cask install pycharm
brew cask install slack
brew cask install xquartz
brew cask install wireshark
brew cask install adobe-reader
brew cask install texshop
brew cask install calibre
brew cask install silverlight
brew cask install vlc

# Docker...no seriously
brew cask install vmware-fusion7
brew install docker
brew install docker-machine


# Work stuff
brew install net-snmp
brew cask install apache-directory-studio
brew cask install wireshark
brew update
brew tap jawshooah/nodenv
brew install jawshooah/nodenv/nodenv
brew install --HEAD node-build


# Remove outdated versions from the cellar.
brew cleanup


LOCALBASH="/usr/local/bin/bash"
if ! grep -q $LOCALBASH /etc/shells; then
  echo $LOCALBASH | sudo tee -a /etc/shells
  sudo chsh -s $LOCALBASH $USER
fi

# Move /usr/local/bin to the top of the path
sudo sed -ie  '/^\/usr\/local\/bin/!H;//p;$!d;g;s/\n//' /etc/paths
