function zlla -d 'use zoxide to cd into directory and then run ls -la'
    __zoxide_z "$argv" && ls -la
end
