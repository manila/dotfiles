#!/bin/sh
# /home/manila/.xinitrc

if [ -d /etc/X11/xinit/xinitrc.d ]; then
	for f in /etc/X11/xinit/xinitrc.d/*; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

#External Monitor
#xrandr --newmode "1920x1080_60.00"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
#xrandr --addmode DP-1 "1920x1080_60.00"
#xrandr --output DP-1 --mode "1920x1080_60.00"
#xrandr --output eDP-1 --mode "1366x768" --left-of DP-1

#load Xresources
xrdb -load ~/.Xresources &

#load xbindkeys
xbindkeys &

#Set 'Desktop' Background
. ~/.fehbg &

#Start Status Bar
bar | lemonbar -p -g 1366x20+0+0 -d \
       	-f "mononoki:style=Regular:size=11" \
       	-f "FontAwesome:size=14" \
       	-f "mononoki:style=Bold:size=11" \
	-f "Material Icons" \
	-B '#000016' \
	-F '#ffffff' &

#Start Composition Manager
compton --config ~/.config/compton/config &

#Start DWM 
exec openbsd-cwm -c ~/.cwmrc

#Lower Volume
amixer set Master 32768
