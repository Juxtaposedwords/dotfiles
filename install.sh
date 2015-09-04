#!/bin/bash
set -ev

for file in $HOME/dotfiles/install.d/*.sh; do
  bash $file
done


CONFIG="install.conf.yaml"
DOTBOT_DIR="dotbot"

DOTBOT_BIN="bin/dotbot"
BASEDIR="$(cd $HOME/dotfiles && pwd)"

cd "${BASEDIR}"
git submodule update --init --recursive "${DOTBOT_DIR}"

"${BASEDIR}/${DOTBOT_DIR}/${DOTBOT_BIN}" -d "${BASEDIR}" -c "${CONFIG}" "${@}"

