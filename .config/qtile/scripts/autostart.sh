#!/usr/bin/zsh
feh --bg-scale ~/Pictures/wallpaper/pexels-bithin-raj-2763927.jpg &
TOTO=xrandr --query | grep '\bconnected\b'
autorandr -c &
xset s off &
xset r rate 150 50 &
picom -b &
