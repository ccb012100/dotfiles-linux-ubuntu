function __fish_pipe_to_devnull -d "Pipe the current command to /dev/null"
    fish_commandline_append " &>/dev/null"
end
