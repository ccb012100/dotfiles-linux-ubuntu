if status is-interactive
    # Commands to run in interactive sessions can go here
    set CURRENTSHELL 🐟
    set EDITOR nvim

    fish_add_path -a $HOME/bin
    fish_add_path -a $HOME/.local/bin

    # -X leaves file contents on the screen when less exits.
    # -F makes less quit if the entire output can be displayed on one screen.
    # -R displays ANSI color escape sequences in "raw" form.
    export LESS="-XFR"

    bind \cg "git status; commandline -f repaint" # <C-g>
    bind \eg "git diff; commandline -f repaint" # <A-g>
    bind \ea history-pager # <A-a>

    stty -ixon # disable XON/XOFF control flow

    # source config files
    for x in "$HOME"/.config/fish/{aliases,tools,fzf,functions}.fish
        source $x
    end

    source $HOME/.local/local-config.fish
end
