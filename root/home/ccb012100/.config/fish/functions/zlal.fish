function zlal -d 'use zoxide to cd into directory and then run ls -al'
    z "$argv" && ls -al
end
