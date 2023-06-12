#!/usr/bin/env bash

gitdir="$HOME/.dotfiles"
root="$gitdir/root"
home="$root/home/ccb012100"

# --verbose --dry-run
rsync --relative --dirs --recursive --times --progress \
    --files-from=files-to-sync-from-home "$HOME/" "$home"

# rsync --dirs --recursive --times --progress \
    # --files-from=files-to-sync-from-root "/" "$root"
