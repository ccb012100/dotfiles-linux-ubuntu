#!/usr/bin/env fish

# built-in tools
alias cls clear
alias grep 'grep --color auto'
alias lec 'echo $status' # last exit code
alias path "echo \"$PATH\" | tr ':' '\n'"
alias rm "echo use trash-cli; false"
alias unalias 'functions --erase'

# ls
alias la 'ls -a'
alias lal 'ls -al'
alias ll 'ls -l'
alias lla 'ls -la'
alias llat 'eza -al -t modified --sort newest'
alias llt 'eza -l -t modified --sort newest'
alias ls 'eza --git --icons --group-directories-first -F' #  replace ls with eza
alias tree 'eza --tree'

# external tools
alias etty 'emacsclient -nw'
alias vim nvim

# convenience aliases to run multiple commands in sequence
alias aptup 'sudo apt update && sudo apt upgrade --yes'
alias snap-store-refresh 'pkill snap-store && sudo snap refresh snap-store'

alias update update_packages

# search Spotify playlists
alias sm "$HOME/src/playlist-search/search.sh"
alias sms 'sm sync db && sm sync tsv'
alias smsync 'use `sms`'
alias sp "$HOME/src/playlist-search/search.py"
