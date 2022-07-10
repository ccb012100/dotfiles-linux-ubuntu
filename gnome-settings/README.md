# GNOME settings

GNOME saves some settings in binaries/databases (particularly `~/.config/dconf/user`), so they can't be added to source control as a human-readable text file.

## keybindings

Command to get keybindings:

```bash
gsettings list-recursively | rg "wm\.keybindings|shell\.keybindings" | sort
```

