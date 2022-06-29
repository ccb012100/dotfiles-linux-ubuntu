# GNOME settings

GNOME saves some settings in binaries/databases (particularly `~/.config/dconf/user`), so they can't be added to source control as a human-readable text file.

## keybindings

Command to get keybindings:

```bash
gsettings list-recursively | rg "wm\.keybindings|shell\.keybindings" | sort
```

## `dash-to-panel.conf`

The (dash-to-panel)[https://github.com/home-sweet-gnome/dash-to-panel] extension uses dconf, but you can export the settings to a file from _Settings_ -> _About_

