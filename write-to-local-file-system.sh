#!/usr/bin/env bash
set -eu
read -rp 'WARNING! This will overwrite your local config files! Are you sure you want to continue? (y/n) ' cont

case $cont in
yes | YES | y | Y) ;;
*)
    echo Exiting...
    exit 1
    ;;
esac

repo_user_dir="$HOME/.dotfiles/root/home/ccb012100"
config_backup="$HOME/.config_bak"

# --verbose --dry-run \
rsync --relative --dirs --recursive --times -v --progress \
    --backup --backup-dir="$config_backup" \
    --files-from=files-to-write-over-local.txt \
    "$repo_user_dir" "$HOME"
