if status is-interactive
    # Commands to run in interactive sessions can go here
    set EDITOR nvim

    set PATH $PATH $HOME/bin
    set PATH $PATH $HOME/.local/bin

    # less configuration
    #: -X leaves file contents on the screen when less exits.
    #: -F makes less quit if the entire output can be displayed on one screen.
    #: -R displays ANSI color escape sequences in "raw" form.
    export LESS="-XFR"

    stty -ixon # disable XON/XOFF control flow

    # source config files
    for x in "$HOME"/.config/fish/{aliases,tools,fzf}.fish
        source $x
    end

    source $HOME/.local/local-config.fish

    # keyboard bindings
    bind \er __fish_pipe_to_ripgrep # <Alt-r>
    bind \co __fish_pipe_to_fzf # <Ctrl-o>
    # TODO: figure out why `commandline -f repaint` is buggy with git commands
    # bind \cg "git status --short --branch; commandline -f repaint" # <Ctrl-g>
    # bind \eg "git diff; commandline -f repaint" # <Alt-g>
    bind \ea history-pager # <Alt-a>

    set fzf_preview_file_cmd batcat # command isn't 'bat'
end
