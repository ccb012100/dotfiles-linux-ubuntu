#!/usr/bin/env fish

#
# built-in tools
#
alias cls clear
alias grep 'grep --color auto'
alias lec 'echo $status' # last exit code
alias path "echo \"$PATH\" | tr ':' '\n'"

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

# wrapper around git calls
alias git $HOME/bin/git_wrapper

# search Spotify playlists from <https://github.com/ccb012100/playlist-search>
alias sa 'SM_TSV="$HOME/bin/albums/all_albums.tsv" sm'
alias sm $HOME/bin/playlist-search.sh
alias sms playlist_sync
alias sp $HOME/bin/playlist-dbsearch.py
