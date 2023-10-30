function zll -d 'use zoxide to cd into directory and then run ls -l'
    z "$argv" && ls -l
end
