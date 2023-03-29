# TODO: move these to separate files
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
