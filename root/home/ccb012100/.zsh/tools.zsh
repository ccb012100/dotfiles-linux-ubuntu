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
export PNPM_HOME="$HOME/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"

# set Ripgrep configuration file
export RIPGREP_CONFIG_PATH="$HOME/.config/ripgreprc"

## ranger
# show when running in a shell that was spawned by ranger
if [ -n "$RANGER_LEVEL" ]; then export PS1="[ranger]$PS1"; fi

# C-g to quit and cd into directory
function ranger {
    local IFS=$'\t\n'
    local tempfile="$(mktemp -t tmp.XXXXXX)"
    local ranger_cmd=(
        command
        ranger
        --cmd="map <c-g> chain shell echo %d > "$tempfile"; quitall"
    )

    ${ranger_cmd[@]} "$@"
    if [[ -f "$tempfile" ]] && [[ "$(cat -- "$tempfile")" != "$(echo -n `pwd`)" ]]; then
        cd -- "$(cat "$tempfile")" || return
    fi
    command rm -f -- "$tempfile" 2>/dev/null
}

# bun
# bun completions
[ -s "/home/cbocardo/.bun/_bun" ] && source "/home/cbocardo/.bun/_bun"

export BUN_INSTALL="/home/cbocardo/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"