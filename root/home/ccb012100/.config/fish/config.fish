if status is-interactive
    # Commands to run in interactive sessions can go here
    set EDITOR nvim

    set PATH $PATH $HOME/bin
    set PATH $PATH $HOME/.local/bin
    set PATH /home/linuxbrew/.linuxbrew/opt/coreutils/libexec/gnubin $PATH
    # links to Edge binary in "/mnt/c/Program Files (x86)" so that we can use xdg-open from WSL
    set BROWSER $HOME/bin/chrome.exe

    # less configuration
    #: -X leaves file contents on the screen when less exits.
    #: -F makes less quit if the entire output can be displayed on one screen.
    #: -R displays ANSI color escape sequences in "raw" form.
    export LESS="-XFR"

    stty -ixon # disable XON/XOFF control flow

    # source config files
    for x in "$HOME"/.config/fish/{abbreviations,aliases,tools}.fish
        source $x
    end

    #source $HOME/.local/local-config.fish

    # keyboard bindings
    bind \co __fish_pipe_to_fzf # <Ctrl-o>
    bind \ea history-pager # <Alt-a>
    bind \en __fish_pipe_to_devnull # <Alt-n>
    bind \er __fish_pipe_to_ripgrep # <Alt-r>

    set fzf_preview_file_cmd batcat # command isn't 'bat'
end
