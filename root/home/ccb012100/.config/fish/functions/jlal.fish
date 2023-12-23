function jlal -d 'use zoxide to cd into directory and then run ls -al'
    __zoxide_z "$argv" && ls -al
end
