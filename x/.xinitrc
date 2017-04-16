#!/bin/sh

compton -b &
xrdb -merge "$HOME/.Xresources"
checkredshift.sh
urxvtd -q -f &
mopidy &
launchbar &
feh --bg-fill ~/Pictures/wallhaven-428798.jpg
rfkill block all

