#!/usr/bin/env fish
# fzf
# https://github.com/junegunn/fzf

# using https://github.com/PatrickF1/fzf.fish
fzf_configure_bindings --variables=\ev # change variables binding to <Alt-v>
set fzf_fd_opts --hidden # include hidden files

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
