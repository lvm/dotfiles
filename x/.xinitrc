#!/bin/sh

compton -b &
xrdb -merge "$HOME/.Xresources"
checkredshift.sh
urxvtd -q -f &
mopidy &
launchbar &
feh --bg-fill ~/Pictures/patrick-hendry-39127.jpg
rfkill block all

