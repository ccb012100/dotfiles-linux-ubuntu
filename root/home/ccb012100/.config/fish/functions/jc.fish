function zc -d 'use zoxide to cd into a directory and then open it in vscode'
    z "$argv" && code .
end
