#!/usr/bin/env bash
set -Eeou pipefail

# update local config files from dotfiles repo

repo=$(dirname -- "$(readlink -f -- "$0")")
repoconf="$repo"/root/home/ccb012100/.config
config="$HOME"/.config

case $1 in
bash)
    cp -uv "$repoconf"/bash/{aliases,tools,functions}.sh "$config"/bash/
    cp -uv "$repo"/root/home/ccb012100/.bashrc "$HOME"/
    ;;
fish)
    cp -uv "$repoconf"/fish/{abbreviations,aliases,config,git-abbreviations,tools}.fish "$config"/fish/
    ;;
git)
    cp -uv "$repoconf"/git/{aliases.gitconfig,git.gitconfig,git_wrapper.sh} "$config"/git/
    ;;
nvim)
    cp -uv "$repoconf"/nvim/init.vim "$config"/nvim/
    ;;
starship)
    cp -uv "$repoconf"/starship.toml "$config"/
    ;;
*)
    echo ERROR: unsupported option
    ;;
esac
