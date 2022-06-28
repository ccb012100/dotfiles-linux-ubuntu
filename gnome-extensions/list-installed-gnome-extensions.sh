#!/usr/bin/env bash
# this actually lists the _enabled_ extensions, but for my purposes, they're equivalent
gsettings get org.gnome.shell enabled-extensions | tr -d "'[] " | tr ',' '\n' | sort
