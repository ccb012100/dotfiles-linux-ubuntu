#!/usr/bin/env bash
script_dir=$(dirname -- "$(readlink -f -- "$0")")
apt list --installed | awk -F"/" '{print $1}' >| "$script_dir"/apt-installed-apps.txt
