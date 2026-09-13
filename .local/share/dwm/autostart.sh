#!/usr/bin/env bash

killall -9 xsettingsd sxhkd dunst ksuperkey xfce4-power-manager 

# xsettingsd --config="$BSPDIR"/xsettingsd &

if [[ ! `pidof xfce-polkit` ]]; then
	/usr/libexec/xfce-polkit &
fi

# sxhkd -c "$BSPDIR"/sxhkdrc &

ksuperkey -e 'Super_L=Alt_L|F1' &
ksuperkey -e 'Super_R=Alt_L|F1' &

# xfce4-power-manager &

if [[ `pidof dunst` ]]; then
	pkill dunst
fi

feh --bg-fill /usr/share/backgrounds/void13.png

sxhkd &

dunst &

pkill -TERM -x picom 2>/dev/null

while pgrep -x picom >/dev/null 2>&1; do
	sleep 0.1
done

picom -b

slstatys &

