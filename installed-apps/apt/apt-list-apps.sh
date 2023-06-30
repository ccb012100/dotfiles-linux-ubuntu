#!/usr/bin/env bash
apt list --installed | awk -F"/" '{print $1}' >| "$HOME"/.dotfiles/installed-apps/apt/apt-installed-apps.txt
