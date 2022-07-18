 #!/usr/bin/zsh
# custom Zsh functions

# functions to cd then ls in one step
function cls { cd "$@" && ls }
function cla { cd "$@" && ls -a }
function cll { cd "$@" && ls -l }
function clal { cd "$@" && ls -al }
function clla { cd "$@" && ls -la }

# cd into the directory the file is located in
function cdf { cd `dirname $1` }

# open new emacs-frame
function new-frame { emacsclient -e "(new-frame)" }

# dotnet cli commands
function dot() {
    case $1 in
        b )
            shift
            dotnet build "$@"
        ;;
        r )
            shift
            dotnet run "$@"
        ;;
        * )
            dotnet "$@"
        ;;
    esac
}

# cargo cli commands
function cg() {
    case $1 in
        b )
            shift
            cargo build
        ;;
        c )
            shift
            cargo check
        ;;
        r )
            shift
            cargo run
        ;;
        * )
            cargo "$@"
        ;;
    esac
}

# find in personal notes
function fn() {
    case $1 in
        i ) # case-insensitive
            shift
            rg -i "$@" ~notes
        ;;
        f ) # verbatim
            shift
            rg -F "$@" ~notes
        ;;
        * )
            rg "$@" ~notes
        ;;
    esac
}
