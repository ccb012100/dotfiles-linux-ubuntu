function update_abbrevs --description 'Update abbreviations.fish and then source the file'
    set abbrfile $HOME/.config/fish/abbreviations.fish
    nvim $abbrfile || return 1

    if not isatty stdin; or not isatty stdout
        echo Not a tty. Exiting.
        return 1
    end

    while read --nchars 1 -l response --prompt-str="Reload $abbrfile? (y/n)"
        switch $response
            case y Y
                . ~/.config/fish/abbreviations.fish
                return 0
            case n N
                echo Not reloading abbrevs.
                return 0
            case '*'
                echo Invalid choice: $response
                continue
        end
    end
end
