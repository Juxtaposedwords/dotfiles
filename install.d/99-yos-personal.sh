#!/bin/bash
# Ignore if we're not on OSX
[[ "$OSTYPE" =~ ^darwin ]] || exit 0

# Here we do more dark magic and bad practices. we use a private repo to pull down personal stuff, and add private tinkerings.


# Clone our personal junk
git clone git@bitbucket.org:Juxtaposedwords/resume.git ~/Documents/Personal/
git clone git@github.com:Juxtaposedwords/ansible-rbenv.git ~/Documents/Personal/Development/

