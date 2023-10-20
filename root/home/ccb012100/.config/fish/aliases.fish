#!/usr/bin/env fish

# built-in tools
alias cls clear
alias grep 'grep --color auto'
alias lec 'echo $status' # last exit code
alias path "echo \"$PATH\" | tr ':' '\n'"

# ls
alias ls 'eza --git --icons --group-directories-first -F' # replace ls with eza
alias l ls
alias la 'ls -a'
alias lal 'ls -al'
alias ll 'ls -l'
alias lla 'ls -la'
alias llat 'eza -al -t modified --sort newest'
alias llt 'eza -l -t modified --sort newest'
alias tree 'eza --tree'

# external tools
alias vim nvim

# wrapper around git calls
alias git $HOME/bin/git_wrapper

# search Spotify playlists
alias sm "$HOME/bin/playlist-search.sh"
alias sms playlist_sync
alias sa 'SM_TSV="$HOME/src/playlist-search/albums/all_albums.tsv" sm'
alias sp "$HOME/bin/playlist-search.py"
