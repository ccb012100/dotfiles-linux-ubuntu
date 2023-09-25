function zla -d 'use zoxide to cd into directory and then run ls -a'
    z "$argv" && ls -a
end
