#!/bin/bash

selected=$(echo "$(nmcli -t -f SSID d wifi)" | rofi -dmenu -theme-str '#prompt { enabled: false; }' -location 6 -yoffset -34 -lines 10 -width 25)

nmcli device wifi connect "$selected"
