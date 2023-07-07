function __fish_pipe_to_fzf -d "Pipe the current command to fzf"
    set -l cmd fzf
    fish_commandline_append " &| $cmd"
end