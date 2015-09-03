# ~/.bashrc: executed by bash(1) for non-login shells.

# OS detection
function is_osx() {
  [[ "$OSTYPE" =~ ^darwin ]] || return 1
}

function is_ubuntu() {
  [[ "$(cat /etc/issue 2> /dev/null)" =~ Ubuntu ]] || return 1
}

if [[ $- != *i* ]] ; then
  # shell is non-interactive. be done now!
  return
fi

# Load all files from .shell/bashrc.d directory
if [ -d $HOME/.shellrc/bashrc.d ]; then
  for file in $HOME/.shellrc/bashrc.d/*.bash; do
    [ -e "$file" ] || break
    source $file
  done
fi

if [ -f ~/.shellrc/local ]; then
    . ~/.shellrc/local
fi

# Load all files from .shell/local.d directory
if [ -d $HOME/.shellrc/local.d ]; then
  for file in $HOME/.shellrc/local.d/*.bash; do
    [ -e "$file" ] || break
    source $file
  done
fi
