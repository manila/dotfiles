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

#Set 'Desktop' Background
. ~/.fehbg &

#Start Status Bar
bar | lemonbar -p -g 1920x26+0+0 -d \
       	-f "mononoki:style=Regular:size=12" \
       	-f "FontAwesome:size=14" \
       	-f "mononoki:style=Bold:size=12" \
	-f "Material Icons" \
	-B '#bb000016' \
	-F '#ffffff' &

#Start Composition Manager
compton --config ~/.config/compton/config &

#Start DWM 
exec openbsd-cwm -c ~/.cwmrc

