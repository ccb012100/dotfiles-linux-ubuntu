#!/usr/bin/env fish

# built-in tools
alias cls clear
alias grep 'grep --color auto'
alias lec 'echo $status' # last exit code
alias path 'printf %s\n $PATH'
alias trash 'gio trash'

# ls
alias ls 'exa --git --icons --group-directories-first -F' #  replace ls with exa
alias tree 'exa --tree'
alias la 'ls -a'
alias ll 'ls -l'
alias lal 'ls -al'
alias lla 'ls -la'
alias llt 'exa -l -t modified --sort newest'
alias llat 'exa -al -t modified --sort newest'

# external tools
alias brewup 'brew upgrade'
alias c. 'code .' # open current directory in VS Code
alias c code
alias cfish "code $__fish_config_dir" # open fish config directory in vscode
alias difftastic difft
alias e emacs
alias etty 'emacsclient -nw'
alias fd 'fd -H' # show hidden files when doing fd search
alias gob 'go build .' # build the go project in the cwd
alias gor 'go run .' # run the go project in the cwd
alias info pinfo
alias jl jless
alias jq 'jq -C' # colorize json
alias kc kubectl
alias m micro
alias md mdcat
alias nts 'npx ts-node' # run local version of ts-node
alias rust 'echo -e "\nthink you mean _rusH_" ' # keep making this typo for some reason
alias sesh 'tmux new-session -A -s sesh'
alias v nvim
alias vi nvim
alias vim nvim

# convenience aliases to run multiple commands in sequence
alias aptup 'sudo apt update && sudo apt upgrade --yes'
alias audio-reload 'systemctl --user restart pipewire pipewire-pulse'
alias guake-export "guake --save-preferences $HOME/.dotfiles/app-exports/guake-preferences"
alias kmonad-reload 'pkill kmonad && nohup kmonad $HOME/.config/kmonad/dell_latitude.kbd &'
alias snap-store-refresh 'pkill snap-store && sudo snap refresh snap-store'

alias update update_packages

# search Spotify playlists
alias sm "$HOME/ccb012100/playlist-search/search.sh"
alias smsync 'sm sync db && sm sync tsv'
alias sp "$HOME/ccb012100/playlist-search/search.py"

# set text-scaling-factor
alias laptop 'textscale laptop'
alias desktop 'textscale desktop'
