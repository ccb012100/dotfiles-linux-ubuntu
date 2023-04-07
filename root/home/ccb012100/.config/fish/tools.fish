#!/usr/bin/env fish
# Put homebrew first because some tools are in the homebrew path

# homebrew
set PATH /home/linuxbrew/.linuxbrew/bin $PATH
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# GPG (GNU Privacy Guard or GnuPG)
export GPG_TTY=$(tty)

# kitty
set PATH $HOME/.local/kitty.app/bin $PATH

# starship
starship init fish | source

## set window title via starship
function set_win_title
    echo -ne "\033]0; $(realpath .) \007"
end

# nodenv
set PATH $HOME/.nodenv/bin $PATH
eval "$(nodenv init -)"

# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
set PATH $PNPM_HOME $PATH

# set Ripgrep configuration file
export RIPGREP_CONFIG_PATH="$HOME/.config/ripgreprc"

# Rust
set PATH $HOME/.cargo/bin $PATH

# zoxide
zoxide init fish | source
