#!/usr/bin/env fish

# built-in tools
alias cls clear
alias grep 'grep --color auto'
alias lec 'echo $status' # last exit code
alias path 'printf %s\n $PATH'
alias trash 'gio trash'

# ls
alias l ls
alias la 'ls -a'
alias lal 'ls -al'
alias ll 'ls -l'
alias lla 'ls -la'
alias llat 'exa -al -t modified --sort newest'
alias llt 'exa -l -t modified --sort newest'
alias ls 'exa --git --icons --group-directories-first -F' #  replace ls with exa
alias tree 'exa --tree'

# external tools
alias brewup 'brew upgrade'
alias etty 'emacsclient -nw'
alias jq 'jq -C' # colorize json

# convenience aliases to run multiple commands in sequence
alias aptup 'sudo apt update && sudo apt upgrade --yes'
alias audio-reload 'systemctl --user restart pipewire pipewire-pulse'
alias guake-export "guake --save-preferences $HOME/.dotfiles/app-exports/guake-preferences"
alias kmonad-reload 'pkill kmonad && nohup kmonad $HOME/.config/kmonad/dell_latitude.kbd &'
alias snap-store-refresh 'pkill snap-store && sudo snap refresh snap-store'

alias update update_packages

# search Spotify playlists
alias sm "$HOME/ccb012100/playlist-search/search.sh"
alias sms 'sm sync db && sm sync tsv'
alias smsync 'use `sms`'
alias sp "$HOME/ccb012100/playlist-search/search.py"

# set text-scaling-factor
alias desktop 'textscale desktop'
alias laptop 'textscale laptop'
