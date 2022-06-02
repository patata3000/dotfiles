#!/usr/bin/zsh
feh --bg-scale ~/Pictures/wallpaper/current_wallpaper.jpg &
TOTO=xrandr --query | grep '\bconnected\b'
autorandr -c &
xset s off &
xset r rate 150 50 &
picom -b &
