#!/bin/bash

# Lock screen displaying this image.
~/dotfiles/i3lock-color/x86_64-pc-linux-gnu/i3lock -n -i ~/dotfiles/i3/scripts/lockscreen.png \
	--insidecolor=373445ff --ringcolor=ffffffff \
	--line-uses-inside --keyhlcolor=d23c3dff \
	--bshlcolor=d23c3dff --separatorcolor=00000000 \
	--insidevercolor=fecf4dff --insidewrongcolor=d23c3dff \
	--ringvercolor=ffffffff --ringwrongcolor=ffffffff \
	--indpos="x+86:y+1003" --radius=15 --veriftext="" --wrongtext=""

# Turn the screen off after a delay.
bat=$(acpi -a)
if [ "$bat" = "Adapter 0: on-line" ]; then
	sleep 60; pgrep i3lock && xset dpms force off
else
	sleep 60; pgrep i3lock && systemctl suspend
fi
