#!/usr/bin/env bash

gitdir="$HOME/.dotfiles"

# add -n,--dry-run flag if testing

sync_file() {
    # rsync arg1 to arg2
    rsync --recursive --times --progress --protect-args "$1" "$gitdir/$2"
}

sync_from_home() {
    rsync --recursive --times --progress --protect-args "$HOME/$1" "$gitdir/home/ccb012100/$2"
}

sync_file "etc/logid.cfg" "etc"
sync_file "etc/keyd/default.conf" "etc/keyd"
sync_file "etc/udev/rules.d/50-wally.rules" "etc/udev/rules.d"

sync_from_home \
    ".config/Code/User/keybindings.json" \
    ".config/Code/User"

sync_from_home \
    ".config/Code/User/settings.json" \
    ".config/Code/User"

sync_from_home \
    ".config/Code/User/snippets" \
    ".config/Code/User"

sync_from_home \
    ".zshrc" \
    ""

sync_from_home \
    ".gitconfig" \
    ""

sync_from_home \
    ".dircolors" \
    ""

sync_from_home \
    ".config/bat/bat.conf" \
    ".config/bat"

sync_from_home \
    ".config/broot/conf.hjson" \
    ".config/broot"

sync_from_home \
    ".config/git" \
    ".config"

sync_from_home \
    ".config/gtk-4.0/settings.ini" \
    ".config/gtk-4.0"

sync_from_home \
    ".config/kitty/kitty.conf" \
    ".config/kitty"

sync_from_home \
    ".config/ranger/ranger.conf" \
    ".config/ranger"

sync_from_home \
    ".config/systemd/user/emacsd.service" \
    ".config/systemd/user"

sync_from_home \
    ".config/terminator/config" \
    ".config/terminator"

sync_from_home \
    ".config/kdiff3rc" \
    ".config"

sync_from_home \
    ".config/mimeapps.list" \
    ".config"

sync_from_home \
    ".config/monitors.xml" \
    ".config/"

sync_from_home \
    ".config/pavucontrol.ini" \
    ".config"

sync_from_home \
    ".config/starship.toml" \
    ".config"

sync_from_home \
    ".vim/vimrc" \
    ".vim"

sync_from_home \
    ".zsh/aliases.zsh" \
    ".zsh"

sync_from_home \
    ".zsh/completions.zsh" \
    ".zsh"

sync_from_home \
    ".zsh/fd.zsh" \
    ".zsh"

sync_from_home \
    ".zsh/funcs.zsh" \
    ".zsh"

sync_from_home \
    ".zsh/fzf_config.zsh" \
    ".zsh"

sync_from_home \
    ".zsh/tools.zsh" \
    ".zsh"

sync_from_home \
    ".zsh/unalias.zsh" \
    ".zsh"

sync_from_home \
    ".bashrc" \
    ""

