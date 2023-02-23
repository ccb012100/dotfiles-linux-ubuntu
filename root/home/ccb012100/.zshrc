# Zsh configuration file
# $HOME/.zshrc

export PATH="$PATH:$HOME/bin:$HOME/.local/bin"
export EDITOR="vim"             # $EDITOR opens in terminal

# -X leaves file contents on the screen when less exits.
# -F makes less quit if the entire output can be displayed on one screen.
# -R displays ANSI color escape sequences in "raw" form.
export LESS="-XFR"

## zsh options
setopt auto_cd
setopt cdable_vars              # directory aliases for cd command
setopt complete_in_word         # complete within a word/phrase
unsetopt correct_all            # this setting is too aggressive
setopt correct                  # spelling correction for commands
setopt ignoreeof                # Ctrl-D won't kill the session
setopt no_case_glob             # case-insensitive globbing
setopt noclobber                # don't overwrite existing files
ENABLE_CORRECTION="true"

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

stty -ixon # disable XON/XOFF control flow

## additional personal config files
source "$HOME"/.zsh/aliases.zsh
source "$HOME"/.zsh/completions.zsh
source "$HOME"/.zsh/fd.zsh
source "$HOME"/.zsh/funcs.zsh
source "$HOME"/.zsh/fzf_config.zsh
source "$HOME"/.zsh/tools.zsh
source "$HOME"/.zsh/unalias.zsh
source "$HOME"/.local/zsh-local-config.zsh

source "$HOME"/ccb012100/playlist-search/search.sh
alias sp="$HOME/ccb012100/playlist-search/search.py"
alias spd="sp --sort date"
alias spalb="sp --type album"

# VTE fix for Tilix
# https://gnunn1.github.io/tilix-web/manual/vteconfig/
if [ "$TILIX_ID" ] || [ "$VTE_VERSION" ]; then
    source /etc/profile.d/vte-2.91.sh
fi
