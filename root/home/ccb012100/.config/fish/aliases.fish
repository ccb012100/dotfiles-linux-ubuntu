#!/usr/bin/env fish

# built-in tools
alias ,=command # easy way to call aliased commands
alias back='cd -'
alias cls=clear
alias cp='cp -iv'
alias cpr='cp -r'
alias ez='exec zsh'
alias grep='grep --color=auto'
alias his=history
alias jctl=journalctl
alias lec='echo $status' # last exit code
alias mkdir='mkdir -v'
alias mv='mv -iv'
alias path='echo $PATH | sed "s/ /\n/g"' # print 1 $PATH entry per line
# alias path='sed "s/:/\n/g" <<< "$PATH"'
alias rm='rm -I'
alias rmdir='rmdir -v'
alias rmr='rm -r'
alias trash='gio trash'
alias uuid='uuidgen --random'

# cd
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

# ls
alias ls='exa --git --icons --group-directories-first -F' #  replace ls with exa
alias tree='exa --tree'
alias la='ls -a'
alias ll='ls -l'
alias lal='ls -al'
alias lla='ls -la'
alias llt='exa -l -t modified --sort newest'
alias llat='exa -al -t modified --sort newest'

# external tools
alias bat=batcat
alias brewup='brew upgrade'
alias c.='code .' # open current directory in VS Code
alias c=code
alias difftastic=difft
alias e=emacs
alias etty='emacsclient -nw'
alias fd='fd -H' # show hidden files when doing fd search
alias gob='go build .' # build the go project in the cwd
alias gor='go run .' # run the go project in the cwd
alias info='pinfo'
alias jl=jless
alias jq='jq -C' # colorize json
alias kc=kubectl
alias m=micro
alias md=mdcat
alias nts='npx ts-node' # run local version of ts-node
alias py=python3
alias pym='python3 -m'
alias python=python3
alias rgf='rg -F' # verbatim search (i.e. disable regex)
alias rgi='rg -i' # case-insensitive search
alias rust='echo -e "\nthink you mean _rusH_" ' # keep making this typo for some reason
alias sesh='tmux new-session -A -s sesh'
alias v=nvim
alias vi=nvim
alias vim=nvim

#git
alias g=git
alias ga='git add'
alias gaa='git aa'
alias gacm='git acm'
alias gc='git c'
alias gcm='git cm'
alias gd='git d'
alias gds='git ds'
alias gf='git f'
alias gl='git l'
alias gp='git pull'
alias gps='git push'
alias gs='git s'
alias gsl='git sl'
alias gsvv='git status -vv'
# npm
alias nr='npm run'
alias nrb='npm run build'
alias nrl='npm run lint'
alias nrestart='npm run build && npm run start'
alias nrs='npm run start'
alias nrt='npm run test'

# zsh-z
alias za='z --add' # add directory to db
alias zc='z -c' # only match subdirs of pwd
alias ze='z -e' # echo best match without jumping
alias zl='z -l' # list matches without jumping
alias zr='z -r' # match by rank
alias zs='z -s' # only match subdirs of pwd
alias zt='z -t' # match by time
alias zt='z -x' # remove directory from db (defaults to pwd)
alias zxr='x -xR' # remove dir and all subdirs from db (defaults to pwd)

# convenience aliases to run multiple commands in sequence
alias aptup='sudo apt update && sudo apt upgrade --yes'
alias audio-reload='systemctl --user restart pipewire pipewire-pulse'
alias guake-export="guake --save-preferences ~/.dotfiles/app-exports/guake-preferences"
alias kmonad-reload='pkill kmonad && nohup kmonad /home/cbocardo/.config/kmonad/dell_latitude.kbd &'
alias snap-store-refresh='pkill snap-store && sudo snap refresh snap-store'
alias update='sudo apt update && sudo apt upgrade --yes && brew upgrade && flatpak update'
