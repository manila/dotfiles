#!/bin/sh
# /home/manila/.xinitrc


if [ -d /etc/X11/xinit/xinitrc.d ]; then
	for f in /etc/X11/xinit/xinitrc.d/*; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

#load xbindkeys
xbindkeys &

#Status Bar
while true; do
	date '+%a %I:%M' | lemonbar -p -d -g 1920x24+0+0 -f mononoki -B FFFFFF -F 052558
	sleep 2
done &

while true; do
	xsetroot -name "$( date +"%a %I:%M" )"
	sleep 1m
done &

exec compton -f -D 3 -b &

#Set 'Desktop' Background
. ~/.fehbg &&

#Start DWM
exec dwm

