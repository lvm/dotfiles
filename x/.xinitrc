#!/bin/sh

compton -b &
xrdb -merge "$HOME/.Xresources"
checkredshift
urxvtd -q -f &
mopidy &
launchbar &
feh --bg-fill ~/Pictures/nathan-anderson-228741.jpg
rfkill block all

