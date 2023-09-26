#!/usr/bin/env fish

# Put homebrew first because some tools are in the homebrew path

# homebrew
set PATH /home/linuxbrew/.linuxbrew/bin $PATH
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# dotnet CLI
complete -f -c dotnet -a "(dotnet complete (commandline -cp))"

# fd
#: Use fd (https://github.com/sharkdp/fd) instead of the default find
#: command for listing path candidates.
#: - The first argument to the function ($argv[1]) is the base path to start traversal
#: - See the source code (completion.{bash,zsh}) for the details.
function _fzf_compgen_path
    fd --hidden --follow --exclude ".git" . "$argv[1]"
end

# Use fd to generate the list for directory completion
function _fzf_compgen_dir
    fd --type d --hidden --follow --exclude ".git" . "$argv[1]"
end

function __fish_pipe_to_fzf -d "Pipe the current command to fzf"
    set -l cmd fzf
    fish_commandline_append " &| $cmd"
end

# forgit
export FORGIT_NO_ALIASES=true # disable default aliases
set PATH $PATH $HOME/tools/forgit/bin/ # use forgit as a git command (e.g. `git forgit add`)

# fzf
#: using https://github.com/PatrickF1/fzf.fish
fzf_configure_bindings --variables=\ev # change variables binding to <Alt-v>
set fzf_fd_opts --hidden # include hidden files

export FZF_COMPLETION_TRIGGER=';;'
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix'
#: dracula theme
export FZF_DEFAULT_OPTS="--cycle --layout=reverse --border --info=inline --border --margin=1 --padding=1 --color=fg:#f8f8f2,bg:#282a36,hl:#bd93f9 --color=fg+:#f8f8f2,bg+:#44475a,hl+:#bd93f9 --color=info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6 --color=marker:#ff79c6,spinner:#ffb86c,header:#6272a4"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'bat -n --color=always {}'
  --bind 'ctrl-/:change-preview-window(down|hidden|)'"
export FZF_ALT_C_OPTS="--preview 'tree -C {}'"

#: copied over from /home/linuxbrew/.linuxbrew/Cellar/fzf/<VERSION>/shell/key-bindings.fish
source "$HOME/bin/fzf-keybindings.fish" && fzf_key_bindings

# GPG (GNU Privacy Guard or GnuPG)
export GPG_TTY=$(tty)

# ripgrep
export RIPGREP_CONFIG_PATH="$HOME/.config/ripgreprc"

function __fish_pipe_to_ripgrep -d "Pipe the current command to ripgrep"
    set -l cmd rg
    fish_commandline_append " &| $cmd"
end

# Rust
set PATH $HOME/.cargo/bin $PATH

# starship.rs
starship init fish | source
enable_transience

# zoxide
zoxide init fish | source
