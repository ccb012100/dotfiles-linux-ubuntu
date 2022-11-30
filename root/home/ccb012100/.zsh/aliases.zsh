#!/usr/bin/zsh
# zsh aliases

### built-in tools

# easy way to call aliased commands
alias ,=command
alias ali='apt list --installed'
alias aptup='sudo apt update && sudo apt upgrade && sudo apt autoremove'
alias back='cd -'
alias c=cd
alias cls=clear
alias cp='cp -iv'
alias ez='exec zsh'
alias grep='grep --color=auto'
alias his=history
alias jctl=journalctl
# last exit code
alias lec='echo $?'
alias mkdir='mkdir -v'
alias mv='mv -iv'
# print $PATH formatted as one entry per line
alias path='sed "s/:/\n/g" <<< "$PATH"'
alias paths='path | sort'
alias ppc=powerprofilesctl
alias rm='rm -I'
alias rmdir='rmdir -v'
alias slu='systemctl list-units'
alias sctl=systemctl
# upgrade snap-store snap
alias snap-store-refresh='pkill snap-store && sudo snap refresh snap-store'
alias trash='gio trash'
alias uuid='uuidgen --random'

## cd
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

## ls
# replace ls with exa
alias ls='exa --git --icons --group-directories-first'
alias tree='exa --tree'
alias l=ls
alias la='ls -a'
alias ll='ls -l'
alias lal='ls -al'
alias lla='ls -la'
alias llt='exa -l -t modified --sort newest'
alias llat='exa -al -t modified --sort newest'

### external tools
alias b=batcat
alias bat=batcat
alias brewup='brew upgrade'
# open current directory in VS Code
alias c.='code .'
alias difftastic=difft
alias e=emacs
# start emacs server if it's not already running
# alias emacs='emacsclient -nc -a=""'
alias etty='emacsclient -nw'
# show hidden files when doing fd search
alias fd='fd -H'
alias g=git
alias ghp='gh pr'
# build the go project in the cwd
alias gob='go build .'
# run the go project in the cwd
alias gor='go run .'
alias gitconfig='vim ~/.gitconfig'
# colorize json
alias jq='jq -C'
alias kc='kubectl'
alias nrb='npm run build'
alias nrl='npm run lint'
alias nrs='npm run start'
alias nrt='npm run test'
# run local version of ts-node
alias nts='npx ts-node'
alias py=python3
alias ran=ranger
# verbatim search (i.e. disable regex)
alias rgf='rg -F'
# case-insensitive search
alias rgi='rg -i'
# keep making this typo for some reason
alias rust='echo -e "\nthink you mean _rusH_"'
alias sesh='tmux new-session -A -s sesh'
alias v=vim

## .zshrc
alias zedit="$EDITOR $HOME/.zshrc"
alias zsource="source $HOME/.zshrc"

## cd to directories 
alias ccb="cd $HOME/ccb012100"
alias conf="cd $HOME/.config"
alias dotf="cd $HOME/.dotfiles"
alias dotemacs="cd $HOME/.emacs.d"
alias dotlocal="cd $HOME/.local"
alias notes="cd $HOME/ccb012100/notes"
alias zshell="cd $HOME/.zsh"

