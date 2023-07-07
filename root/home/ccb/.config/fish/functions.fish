#!/usr/bin/env fish
# custom fish functions

# functions to cd then ls in one step
function cls
    cd "$argv" && ls
end
function cla
    cd "$argv" && ls -a
end
function cll
    cd "$argv" && ls -l
end
function clal
    cd "$argv" && ls -al
end
function clla
    cd "$argv" && ls -la
end

# cd into the directory the file is located in
function cdf
    cd `dirname $argv[1]`
end

# open new emacs-frame
function new-frame
    emacsclient -e "(new-frame)"
end

function fn
    switch $argv[1]
        case i # case-insensitive
            shift
            rg -i "$argv" ~notes

        case f # verbatim
            shift
            rg -F "$argv" ~notes

        case *
            rg "$argv" ~notes

    end
end

function __fish_pipeto_fzf -d "Pipe the current command to fzf"
    set -l cmd fzf
    fish_commandline_append " &| $cmd"
end

function __fish_pipeto_ripgrep -d "Pipe the current command to ripgrep"
    set -l cmd rg
    fish_commandline_append " &| $cmd"
end

### convenience function
function kitty-update
    curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
end

# bind functions to keyboard shortcuts
bind \er __fish_pipeto_ripgrep # <Alt-r>
bind \co __fish_pipeto_fzf # <Ctrl-o>