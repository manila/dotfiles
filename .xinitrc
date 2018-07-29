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

#Start Composition Manager
compton --config /home/manila/.config/compton/config &

#Set 'Desktop' Background
. ~/.fehbg &

#Start Status Bar
barf.sh | lemonbar -g 1920x26+0+0 -d -f "mononoki:size=12" -f "Font Awesome 5 Free:style=Solid:size=14" -p -B '#000016' -F '#ffffff' &

#Start DWM 
exec dwm

