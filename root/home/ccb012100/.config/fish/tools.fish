#!/usr/bin/env fish

# Put homebrew first because some tools are in the homebrew path

# homebrew
set PATH /home/linuxbrew/.linuxbrew/bin $PATH
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# GPG (GNU Privacy Guard or GnuPG)
export GPG_TTY=$(tty)

# fzf
#: using https://github.com/PatrickF1/fzf.fish
fzf_configure_bindings --variables=\ev # change variables binding to <Alt-v>
set fzf_fd_opts --hidden # include hidden files

# kitty
#set PATH $HOME/.local/kitty.app/bin $PATH

# starship.rs
starship init fish | source

# nodenv
#set PATH $HOME/.nodenv/bin $PATH
#eval "$(nodenv init -)"

# pnpm
#export PNPM_HOME="$HOME/.local/share/pnpm"
#set PATH $PNPM_HOME $PATH

# set Ripgrep configuration file
export RIPGREP_CONFIG_PATH="$HOME/.config/ripgreprc"

# Rust
set PATH $HOME/.cargo/bin $PATH

# zoxide
zoxide init fish | source

# forgit
export FORGIT_NO_ALIASES=true # disable default aliases
set PATH $PATH $HOME/tools/forgit/bin/ # use forgit as a git command (e.g. `git forgit add`)
