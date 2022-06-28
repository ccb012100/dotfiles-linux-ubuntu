# GNOME settings

GNOME saves some settings in binaries/databases, so they be added to source control as a human-readable text file.

## Keybindings

Command to get keybindings:

```bash
gsettings list-recursively | rg "wm\.keybindings|shell\.keybindings" | sort
```

