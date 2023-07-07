#!/usr/bin/env fish

# built-in tools
alias cls clear
alias grep 'grep --color auto'
alias lec 'echo $status' # last exit code
alias path "echo \"$PATH\" | tr ':' '\n'"
alias unalias 'functions --erase'

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
