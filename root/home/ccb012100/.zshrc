# Zsh configuration file
# $HOME/.zshrc

export PATH="$PATH:$HOME/bin"
export EDITOR="vim"             # $EDITOR opens in terminal

## zsh options
setopt auto_cd
setopt cdable_vars              # directory aliases for cd command
setopt complete_in_word         # complete within a word/phrase
unsetopt correct_all            # this setting is too aggressive
setopt correct                  # spelling correction for commands
setopt ignoreeof                # Ctrl-D won't kill the session
setopt no_case_glob             # case-insensitive globbing
setopt noclobber                # don't overwrite existing files

DISABLE_AUTO_TITLE="true"

## zsh history
HISTFILE="$HOME"/.zsh_history
HISTSIZE=50000
SAVEHIST=50000
setopt inc_append_history
setopt share_history
setopt hist_expire_dups_first
setopt hist_find_no_dups
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt hist_verify

## directory history
## see http://zsh.sourceforge.net/Intro/intro_6.html
DIRSTACKSIZE=10
setopt autopushd pushdminus pushdsilent pushdtohome
alias dh='dirs -v'

## Keybindings
bindkey -e  # emacs key-bindings

## Enable C-x C-e to edit command line
autoload -U edit-command-line
zle -N edit-command-line
bindkey '^x^e' edit-command-line

## additional personal config files
source "$HOME"/.zsh/aliases.zsh
source "$HOME"/.zsh/completions.zsh
source "$HOME"/.zsh/fd.zsh
source "$HOME"/.zsh/funcs.zsh
source "$HOME"/.zsh/fzf_config.zsh
source "$HOME"/.zsh/tools.zsh
source "$HOME"/.zsh/unalias.zsh
source "$HOME"/.local/local_config.zsh
source "$HOME"/ccb012100/starred-music/search.sh