#!/usr/bin/env bash
set -eu
echo WARNING! This will overwrite your local config files! Are you sure you want to continue?

read -r continue

case $continue in
yes | YES | y | Y) ;;
*)
    echo Exiting...
    exit 1
    ;;
esac

REPO_ROOT="$HOME/.dotfiles/root"
REPO_USER_DIR="$REPO_ROOT/home/ccb012100"
CONFIG_BACKUP="$REPO_USER_DIR/.config_bak"

# --verbose --dry-run \
rsync --relative --dirs --recursive --times --progress \
    -vv --dry-run \
    --backup --backup-dir="$CONFIG_BACKUP" \
    --files-from=files-to-write-over-local.txt \
    "$REPO_USER_DIR" "$CONFIG_BACKUP"
