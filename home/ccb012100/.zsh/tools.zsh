#!/usr/bin/zsh
# External Zsh tools

# GPG (GNU Privacy Guard or GnuPG)
export GPG_TTY=$(tty)

## zsh-completions
fpath=(/usr/local/share/zsh-completions $fpath) # activate zsh-completions
fpath=($HOME/.zsh/zsh-completions $fpath)       # activate zsh-completions

## broot
source $HOME/.config/broot/launcher/bash/br

## zsh-autosuggestions
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=213"

## zsh-syntax-highlighting
# dracula theme; must come before sourcing the main package
source $HOME/tools/dracula-theme/dracula-zsh-syntax-highlighting/zsh-syntax-highlighting.sh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/share/zsh-syntax-highlighting/highlighters

## ranger
# show when running in a shell that was spawned by ranger
if [ -n "$RANGER_LEVEL" ]; then export PS1="[ranger]$PS1"; fi

## starship
eval "$(starship init zsh)"

# set window title via starship
function set_win_title(){
    echo -ne "\033]0; $(realpath .) \007"
}

precmd_functions+=(set_win_title)

# homebrew
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# nodenv
export PATH=$HOME/.nodenv/bin:$PATH
eval "$(nodenv init -)"

# pnpm
export PNPM_HOME="/home/cbocardo/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
