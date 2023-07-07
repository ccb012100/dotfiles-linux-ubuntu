if status is-interactive
    # Commands to run in interactive sessions can go here
    set EDITOR nvim

    set PATH $PATH $HOME/bin
    set PATH $PATH $HOME/.local/bin

    # links to Edge binary in "/mnt/c/Program Files (x86)" so that we can use xdg-open from WSL
    set BROWSER $HOME/bin/chrome.exe

    # less configuration
    #: -X leaves file contents on the screen when less exits.
    #: -F makes less quit if the entire output can be displayed on one screen.
    #: -R displays ANSI color escape sequences in "raw" form.
    export LESS="-XFR"

    stty -ixon # disable XON/XOFF control flow

    # source config files
    for x in "$HOME"/.config/fish/{aliases,abbreviations,tools}.fish
        source $x
    end

    #source $HOME/.local/local-config.fish

    # keyboard bindings
    bind \cd delete-char # override default delete-or-exit for <Ctrl-d>
    bind \co __fish_pipe_to_fzf # <Ctrl-o>
    bind \ea history-pager # <Alt-a>
    bind \en __fish_pipe_to_devnull # <Alt-n>
    bind \er __fish_pipe_to_ripgrep # <Alt-r>
    # TODO: figure out why `commandline -f repaint` is buggy with git commands
    #: from initial investigation in repo's issues, may be due to async functions
    # bind \cg "git status --short --branch; commandline -f repaint" # <Ctrl-g>
    # bind \eg "git diff; commandline -f repaint" # <Alt-g>

    set fzf_preview_file_cmd batcat # command isn't 'bat'

    # get ssh key credentials from the running instance of ssh-agent
    eval $(keychain --eval ~/.ssh/id_ed25519)
end
