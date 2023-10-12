#!/usr/bin/env fish

# built-in tools
alias cls clear
alias grep 'grep --color auto'
alias lec 'echo $status' # last exit code
alias path "echo \"$PATH\" | tr ':' '\n'"

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
alias vim nvim

# convenience aliases to run multiple commands in sequence
alias aptup 'sudo apt update && sudo apt upgrade --yes'

# search Spotify playlists
alias sm "$HOME/bin/playlist-search.sh"
alias sma 'SM_TSV="$HOME/src/playlist-search/albums/all_albums.tsv" sm'
alias sms 'sm sync db && sm sync tsv'
alias sp "$HOME/bin/playlist-search.py"
