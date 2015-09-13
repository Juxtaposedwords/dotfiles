#!/bin/bash
# Ignore if we're not on OSX
[[ "$OSTYPE" =~ ^darwin ]] || exit 0

#
# Let's store some variables so we don't do a lot of copypasta
ALFRED_WORKFLOWS_DIR="$HOME/Library/Application Support/Alfred 2/Alfred.alfredpreferences/workflows"
ALFRED_WORKFLOWS_GIT="https://bitbucket.org/Juxtaposedwords/alfred-workflows"

if ! [ -d "$ALFRED_WORKFLOWS_DIR"/.git ]; then
  sudo rm -r "$ALFRED_WORKFLOWS_DIR"
  git clone "$ALFRED_WORKFLOWS_GIT" "$ALFRED_WORKFLOWS_DIR"
  cd "$ALFRED_WORKFLOWS_DIR"
  git submodule update --init --recursive
else 
  cd "$ALFRED_WORKFLOWS_DIR"
  git reset --hard origin/master
fi

open "$HOME/Applications/Alfred\ 2.app"
# Clone our personal junk
git clone git@bitbucket.org:Juxtaposedwords/resume.git $HOME/Documents/Personal/resume
git clone git@github.com:Juxtaposedwords/ansible-rbenv.git $HOME/Documents/Personal/Development/ansible-rbenv

