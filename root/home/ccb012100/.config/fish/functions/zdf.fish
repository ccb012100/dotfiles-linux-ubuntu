# use zoxide to cd into the directory the file is located in
function zdf
    zoxide (dirname $argv[1])
end
