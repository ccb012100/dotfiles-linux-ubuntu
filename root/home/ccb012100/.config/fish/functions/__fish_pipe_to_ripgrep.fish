function __fish_pipe_to_ripgrep -d "Pipe the current command to ripgrep"
    set -l cmd rg
    fish_commandline_append " &| $cmd"
end
