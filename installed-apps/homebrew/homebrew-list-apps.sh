#!/usr/bin/env bash
script_dir=$(dirname -- "$(readlink -f -- "$0")")
brew list >| "$script_dir"/homebrew-installed-apps.txt