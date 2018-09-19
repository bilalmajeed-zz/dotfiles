#!/bin/bash

selected=$(echo "[WIFI]
Connected to: $(iwgetid -r)
Scan Nearby Networks
--------------------------------------------
[Dropbox]
$(dropbox status)" | rofi -dmenu -theme-str '#prompt { enabled: false; }' -location 6 -yoffset -34 -lines 10 -width 25)

if [[ $selected = "Scan Nearby Networks" ]]; then
		~/dotfiles/rofi/wifi_scan.sh &
fi
