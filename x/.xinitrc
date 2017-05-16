#!/bin/sh

compton -b &
xrdb -merge "$HOME/.Xresources"
checkredshift.sh
urxvtd -q -f &
mopidy &
launchbar &
feh --bg-fill ~/Pictures/wallhaven-493318.jpg
rfkill block all
wal -i "$(< "${HOME}/.cache/wal/wal")"
