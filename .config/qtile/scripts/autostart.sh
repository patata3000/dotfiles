#!/usr/bin/zsh
TOTO=xrandr --query | grep '\bconnected\b'
autorandr -c &
xset s off &
xset r rate 150 50 &
picom -b &
