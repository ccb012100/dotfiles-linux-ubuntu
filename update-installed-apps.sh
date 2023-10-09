#!/usr/bin/env bash
set -eou pipefail
repo=$(dirname -- "$(readlink -f -- "$0")")

"$repo"/installed-apps/apt/apt-list-apps.sh
"$repo"/installed-apps/homebrew/homebrew-list-apps.sh