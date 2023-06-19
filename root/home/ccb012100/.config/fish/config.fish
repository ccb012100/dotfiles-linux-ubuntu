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

    # source: https://gist.github.com/josh-padnick/c90183be3d0e1feb89afd7573505cab3
    ssh-agent
    set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
    set -Ux SSH_AGENT_PID $SSH_AGENT_PID

    /usr/bin/keychain $HOME/.ssh/id_ed25519
    source $HOME/.keychain/$HOST-sh
end
