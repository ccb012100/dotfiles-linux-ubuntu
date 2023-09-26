function zlla -d 'use zoxide to cd into directory and then run ls -la'
    z "$argv" && ls -la
end
