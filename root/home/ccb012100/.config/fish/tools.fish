#!/usr/bin/env fish
# Put homebrew first because some tools are in the homebrew path

## homebrew
fish_add_path -p /home/linuxbrew/.linuxbrew/bin
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

## GPG (GNU Privacy Guard or GnuPG)
export GPG_TTY=$(tty)

## kitty
fish_add_path -p $HOME/.local/kitty.app/bin

## starship
starship init fish | source

# set window title via starship
function set_win_title
    echo -ne "\033]0; $(realpath .) \007"
end

## nodenv
fish_add_path -p $HOME/.nodenv/bin
eval "$(nodenv init -)"

## pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
fish_add_path -p $PNPM_HOME

## set Ripgrep configuration file
export RIPGREP_CONFIG_PATH="$HOME/.config/ripgreprc"
