#!/bin/bash

selected=$(echo "Sleep
Sign Out
Reboot
Shutdown" | rofi -dmenu -i -theme-str '#prompt { enabled: false; }' -location 5 -yoffset -34 -xoffset-5 -lines 4 -width 10)

if [[ $selected = "Sleep" ]]; then
	i3lock -c 000000
	systemctl suspend
elif [[ $selected = "Sign Out" ]]; then
	i3-msg exit
elif [[ $selected = "Reboot" ]]; then
	reboot
elif [[ $selected = "Shutdown" ]]; then
	shutdown -h now	
fi
