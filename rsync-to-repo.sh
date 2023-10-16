#!/usr/bin/env bash

repo_root="$HOME/.dotfiles/root"
repo_user_dir="$repo_root/home/ccb012100"
files_to_sync="$HOME/.dotfiles/files-to-sync.txt"

# --verbose --dry-run \
rsync --relative --dirs --recursive --times --progress \
    --files-from="$files_to_sync" "$HOME/" "$repo_user_dir"
