#!/bin/bash

killall -9 polkit-gnome-authentication-agent-1 dunst picom mpd

xrandr --output eDP-1 --mode 1280x800

/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
dunst &
nitrogen --restore
picom -b
mpd &
