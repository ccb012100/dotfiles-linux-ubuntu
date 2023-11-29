#!/usr/bin/env bash
set -Eeou pipefail
# wrap git calls to perform more complex aliases

case $1 in
date)
    GIT_COMMITTER_DATE="$(date)" git commit --amend --no-edit --date "$(date)"
    ;;
*) # pass through to git-util
    "$HOME"/bin/git-util "$@"
    ;;
esac
