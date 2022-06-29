#!/usr/bin/zsh
# zsh aliass

### built-in tools

# easy way to call aliased commands
alias ,='command'
alias aptup='sudo apt update && sudo apt upgrade'
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
alias rm='rm -v'
alias rmi='rm -i'
alias rmdir='rmdir -v'

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

alias bat='batcat'
# open current directory in VS Code
alias c.='code .'
alias difftastic='difft'
alias e='emacs'
alias emacs='emacsclient -nc -a=""'
# show hidden files when doing fd search
alias fd='fd -H'
alias g='git'
alias gf='git forgit'
alias gitconfig='vim ~/.gitconfig'
# colorize json
alias jq='jq -C'
# prevent accidentally using npn instead of pnpm
alias npm="echo 'use \"pnpm\"'"
alias py='python3'
alias r='ranger'
# make ripgrep searches case insensitive by default
alias rg='rg -i'
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
# pipe into fzf
alias -g zf='| fzf'
