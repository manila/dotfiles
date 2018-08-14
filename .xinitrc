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
       	-f "mononoki:size=12" \
       	-f "Font Awesome 5 Free:style=Solid:size=14" \
	-f "Material Icons" \
	-B '#dd000016' \
	-F '#ffffff' &

#Start Composition Manager
compton --config ~/.config/compton/config &

#Start DWM 
exec openbsd-cwm -c ~/.cwmrc

