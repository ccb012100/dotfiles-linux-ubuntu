function textscale --description 'Get/set the system-wide text size'
    switch argv[1]
        case laptop
            gsettings set org.gnome.desktop.interface text-scaling-factor .9
        case desktop
            gsettings set org.gnome.desktop.interface text-scaling-factor 1.25
        case get
            gsettings get org.gnome.desktop.interface text-scaling-factor
        case set
            gsettings set org.gnome.desktop.interface text-scaling-factor $argv[2]
        case *
            echo 'usage: text-scaling [ laptop | desktop | get | set <SCALING_FACTOR> ]'
    end
end
