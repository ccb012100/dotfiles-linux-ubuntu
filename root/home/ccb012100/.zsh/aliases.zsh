#!/usr/bin/zsh
# zsh aliass

### built-in tools

# easy way to call aliased commands
alias ,='command'
alias ali='apt list --installed'
alias aptup='sudo apt update && sudo apt upgrade && sudo apt autoremove'
alias c='cat'
alias cls='clear'
alias cp='cp -iv'
alias grep='grep --color=auto'
alias his='history'
# last exit code
alias lec='echo $?'
alias mkdir='mkdir -v'
alias mv='mv -nv'
# print $PATH formatted as one entry per line
alias path='sed "s/:/\n/g" <<< "$PATH"'
alias paths='path | sort'
alias ppc='powerprofilesctl'
alias rm='rm -v'
alias rmi='rm -i'
alias rmdir='rmdir -v'
alias slu='systemctl list-units'
alias sy='systemctl'
alias trash='gio trash'

## cd
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

## ls
# replace ls with exa
alias ls='exa --git --icons'
alias tree='exa --tree'
alias l='ls'
alias la='ls -a'
alias ll='ls -l'
alias lal='ls -al'
alias lla='ls -la'
alias llt='exa -l -t modified --sort newest'
alias llat='exa -al -t modified --sort newest'

### external tools
alias b='batcat'
alias bat='batcat'
# open current directory in VS Code
alias c.='code .'
alias difftastic='difft'
alias e='emacs'
# start emacs server if it's not already running
alias emacs='emacsclient -nc -a=""'
alias etty='emacsclient -nw'
# show hidden files when doing fd search
alias fd='fd -H'
alias g='git'
# build the go project in the cwd
alias gob='go build .'
# run the go project in the cwd
alias gor='go run .'
alias gitconfig='vim ~/.gitconfig'
# colorize json
alias jq='jq -C'
# prevent accidentally using npn instead of pnpm
alias npm="echo 'use \"pnpm\"'"
alias py='python3'
alias ran='ranger'
# verbatim search (i.e. disable regex)
alias rgf='rg -F'
# keep making this mistake for some reason
alias rust='echo think you mean _rush_'
alias sesh='tmux new-session -A -s sesh'
alias v='vim'

## .zshrc
alias zedit="$EDITOR $HOME/.zshrc"
alias zsource="source $HOME/.zshrc"

## directory aliases
export ccb="$HOME"/ccb012100
export conf="$HOME"/.config
export dotf="$HOME"/.dotfiles
export dotemacs="$HOME"/.emacs.d
export notes="$HOME"/ccb012100/notes
export zshell="$HOME"/zsh

## global aliases
alias -g ,b='| batcat'
alias -g ,bat='| batcat'
alias -g ,c='| cat'
alias -g ,cat='| cat'
alias -g ,l='| less'
alias -g ,less='| less'
alias -g ,rg='| rg'
alias -g ,rgf='| rg -F'
alias -g ,fzf='| fzf'
