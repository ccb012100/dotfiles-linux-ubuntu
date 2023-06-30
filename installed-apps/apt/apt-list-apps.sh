#!/usr/bin/env bash
apt list --installed | awk -F"/" '{print $1}' >| "$HOME"/.dotfiles/installed-apps/apt-installed-apps.txt
