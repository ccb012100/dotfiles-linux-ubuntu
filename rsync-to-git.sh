#!/usr/bin/env bash

gitdir="$HOME/.dotfiles"
root="$gitdir/root"
home="$root/home/ccb012100"

# add -n,--dry-run flag if testing

# --verbose --dry-run
rsync --dirs --recursive --times --progress \
    --include-from=files-to-sync-from-home "$HOME" "$home"

rsync --dirs --recursive --times --progress \
    --include-from=files-to-sync-from-root "/" "$root"
