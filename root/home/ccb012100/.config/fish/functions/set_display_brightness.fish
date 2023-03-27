function bright --description 'set display brightness'
    xrandr --output DP-1-2 --brightness $argv[1]
end
