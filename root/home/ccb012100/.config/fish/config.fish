if status is-interactive
    # Commands to run in interactive sessions can go here
    set CURRENTSHELL 🐟
    set EDITOR nvim
    bind \cg "git status; commandline -f repaint" # <C-g>
    bind \eg "git diff; commandline -f repaint" # <A-g>

    # source config files
    for x in "$HOME"/.config/fish/{aliases,tools,fzf,functions}.fish
        source $x
    end
end
