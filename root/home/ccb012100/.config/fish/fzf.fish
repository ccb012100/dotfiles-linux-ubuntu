#!/usr/bin/env fish
# fzf
# https://github.com/junegunn/fzf

# using https://github.com/PatrickF1/fzf.fish
fzf_configure_bindings --variables=\ev # change variables binding to <Alt-v>
set fzf_fd_opts --hidden # include hidden files

# use ripgrep instead of find
# export FZF_DEFAULT_COMMAND="rg --files --hidden --follow --glob '!.git' --exclude node_modules"
# export FZF_DEFAULT_OPTS="--height=75% --cycle --multi --info=inline --border \
# --tabstop=4 --header-lines=1 \
# --bind='?:toggle-preview,f12:execute(less -f {})' \
# --header='[ (?) Toggle preview ][ (F12) pipe to less ]' \
# --preview-window=:hidden --preview 'batcat --style=numbers --color=always {}' \
# --color=bg+:#293739,bg:#1B1D1E,border:#808080,spinner:#E6DB74,hl:#7E8E91,fg:#F8F8F2,header:#7E8E91,info:#A6E22E,pointer:#A6E22E,marker:#F92672,fg+:#F8F8F2,prompt:#F92672,hl+:#F92672"

# find-in-file - usage: fif <searchTerm>
# from https://github.com/junegunn/fzf/wiki/examples
function fif
    if [ ! (count $argv) -gt 0 ]
        echo "Need a string to search for!"
        return 1
    end
    rg --files-with-matches --no-messages $argv[1] |
        fzf --preview "highlight -O ansi -l {} 2> /dev/null | rg --colors 'match:bg:yellow' --ignore-case --pretty --context 10 '$argv[1]' || rg --ignore-case --pretty --context 10 '$argv[1]' {}"
end
