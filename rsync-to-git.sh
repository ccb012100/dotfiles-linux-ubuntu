#!/usr/bin/env bash

REPO_ROOT="$HOME/.dotfiles/root"
REPO_USER_DIR="$REPO_ROOT/home/ccb012100"

# --verbose --dry-run \
rsync --relative --dirs --recursive --times --progress \
    --files-from=files-to-sync.txt "$HOME/" "$REPO_USER_DIR"
