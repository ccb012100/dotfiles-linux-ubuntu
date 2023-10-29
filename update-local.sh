#!/usr/bin/env bash
set -Eeou pipefail

# update local config files from dotfiles repo

repo=$(dirname -- "$(readlink -f -- "$0")")
repoconf="$repo"/root/home/ccb012100/
config="$HOME"/.config

case $1 in
bash)
    cp -i "$repoconf"/bash/{aliases,tools,functions}.sh "$config"/bash/
    ;;
bashrc)
    cp -i "$repo"/root/home/ccb012100/.bashrc "$HOME"/
    ;;
fish)
    cp -i "$repoconf"/fish/{abbreviations,aliases,config,tools}.fish "$config"/fish/
    ;;
git)
    cp -i "$repoconf"/git/{aliases.gitconfig,git_wrapper.sh} "$config"/git/
    ;;
starship)
    cp -i "$repoconf"/starship.toml "$config"/
    ;;
*)
    echo ERROR: unsupported option
    ;;
esac
