#!/usr/bin/env bash

set -xe

DATA="${XDG_DATA_HOME:-${HOME}/.local/share}/icons-in-terminal/"
FONTS="${XDG_DATA_HOME:-${HOME}/.local/share}/fonts/"

cp ./build/icons-in-terminal.ttf "${FONTS}"
fc-cache -fvr --really-force "${FONTS}"

mkdir -p "$DATA"
cp ./build/* "$DATA"

set +xe

echo -e "\n${NORMAL}Font successfully installed. Now start a new terminal and run print_icons.sh :)"
