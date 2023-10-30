function zls -d 'use zoxide to cd into directory and then run ls'
    z "$argv" && ls
end
