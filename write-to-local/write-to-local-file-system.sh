#!/usr/bin/env bash
set -Eeou pipefail

read -rp 'WARNING! This will overwrite your local config files! Are you sure you want to continue? (y/n) ' cont

case $cont in
yes | YES | y | Y) ;;
*)
    echo Exiting...
    exit 1
    ;;
esac

repo=$(dirname -- "$(readlink -f -- "$0")")
repo_user_dir="$repo"/root/home/ccb012100
config_backup="$HOME"/.config_bak
files_to_write="$repo"/write-to-local/files-to-write-over-local.txt

# --verbose --dry-run \
rsync --relative --dirs --recursive --times -v --progress \
    --backup --backup-dir="$config_backup" \
    --files-from="$files_to_write" \
    "$repo_user_dir" "$HOME"
