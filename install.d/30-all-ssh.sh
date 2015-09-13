#!/bin/bash
# Ignore if we're not on OSX
# Stolen from https://gist.github.com/iainconnor/f9d4964ea4211e794d1dj
# Setup your primary SSH key
echo "This is for your configuring your machine's primary SSH Key"
read -e -p "Enter your ssh public key" SSH_PUB
read -e -p "Enter your ssh private key" SSH_PRIV
if $SSH_PUB != "" && $SSH_PRIV != "" && ! [ -f $HOME/.ssh/id_rsa.pub] && ! [ -f $HOME/.ssh/id_rsa ; then
  echo $SSH_PUB > $HOME/.ssh/id_rsa.pub
  echo $SSH_PRIV > $HOME/.ssh/id_rsa
fi
#Make sure we have the defaults
chmod 600 $HOME/.ssh/id_rsa*
