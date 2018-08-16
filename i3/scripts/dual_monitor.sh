#!/bin/bash
monitors=$(xrandr -q| grep " connected" | cut -c-3)
if [ "$monitors" = "eDP" ]; then
	xrandr --auto
else 
	# external monitor connected
	xrandr --output DP-1 --mode 1680x1050 --pos 0x0 --rotate normal --output eDP-1 --mode 1920x1080 --pos 0x1050  --rotate normal
fi