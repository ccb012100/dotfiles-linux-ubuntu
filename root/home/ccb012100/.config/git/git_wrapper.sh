#!/usr/bin/env bash
set -Eeou pipefail
# wrap git calls to perform more complex aliases

# ANSI colors
blue='\033[0;34m'
clearformat='\033[0m' # clear formatting
red='\033[0;31m'

function info() {
    echo -e "${blue}${*}${clearformat}"
}
function error() {
    echo >&2 -e "${red}Error: ${*}${clearformat}"
}

if [[ "${debug_wrapper:-}" && $debug_wrapper ]]; then
    info "--> git wrapper called with: $*"
fi

git_util="$HOME"/bin/git-util

if [[ $# -eq 0 ]]; then
    $git_util
fi

case $1 in
a | ac | aac | alias | auc | author | \
    files | l | la | ll | last | \
    sh | shf | show | restore | \
    undo | unstage | u | update | unwind) # pass through to git-util
    "$HOME"/bin/git-util "$@"
    ;;
date)
    GIT_COMMITTER_DATE="$(date)" git commit --amend --no-edit --date "$(date)"
    ;;
*) # pass through to git
    if [[ "${debug_wrapper:-}" && $debug_wrapper ]]; then
        info "--> passing to native git: $* "
    fi

    command git "$@"
    ;;
esac
