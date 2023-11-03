#!/usr/bin/env fish

#
# built-in tools
#
alias grep 'grep --color=auto'
alias ppath "echo \"$PATH\" | tr ':' '\n'"

# ls
alias la 'ls -a'
alias lal 'ls -al'
alias ll 'ls -l'
alias lla 'ls -la'

alias aptup 'sudo apt update && sudo apt upgrade --yes'

#
# external tools
#

alias vim nvim

# eza
alias ls 'eza --git --icons --group-directories-first -F' # replace ls with eza
alias llat 'eza -al -t modified --sort newest'
alias llt 'eza -l -t modified --sort newest'
alias tree 'eza --tree'

#
# aliases to $HOME/bin scripts
#

# use util from <https://github.com/ccb012100/playlist-util> to search
# Spotify playlists from <https://github.com/ccb012100/playlist-search>
alias sm 'playlist-util tsv ~/bin/albums/sorted_albums.tsv search'
alias sma 'playlist-util tsv ~/bin/albums/all_albums.tsv search --include-playlist-name'
alias smp 'playlist-util tsv ~/bin/albums/sorted_albums.tsv search --include-playlist-name'
alias sms playlist_sync
alias smpd $HOME/bin/playlist-dbsearch.py

# changed zoxide command
alias z 'echo use "j" for zoxide'
