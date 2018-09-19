#!/bin/bash

selected=$(echo "Sleep
Sign Out
Reboot
Shutdown" | rofi -dmenu -i -theme-str '#prompt { enabled: false; }' -location 5 -yoffset -34 -xoffset-5 -lines 4 -width 10)

if [[ $selected = "Sleep" ]]; then
	~/dotfiles/i3lock-color/x86_64-pc-linux-gnu/i3lock -n -i ~/dotfiles/i3/scripts/lockscreen.png \
	--insidecolor=373445ff --ringcolor=ffffffff \
	--line-uses-inside --keyhlcolor=d23c3dff \
	--bshlcolor=d23c3dff --separatorcolor=00000000 \
	--insidevercolor=fecf4dff --insidewrongcolor=d23c3dff \
	--ringvercolor=ffffffff --ringwrongcolor=ffffffff \
	--indpos="x+86:y+1003" --radius=15 --veriftext="" --wrongtext="" &

	systemctl suspend
elif [[ $selected = "Sign Out" ]]; then
	i3-msg exit
elif [[ $selected = "Reboot" ]]; then
	reboot
elif [[ $selected = "Shutdown" ]]; then
	shutdown -h now	
fi
