#!/bin/bash
# Take a screenshot
scrot /tmp/screen_locked.png

# Pixellate it 10x
convert /tmp/screen_locked.png -scale 10% -scale 1000% /tmp/screen_locked2.png

# Lock screen displaying this image.
i3lock -i /tmp/screen_locked2.png

rm /tmp/screen_locked.png /tmp/screen_locked2.png

# Turn the screen off after a delay.
#sleep 60; pgrep i3lock && xset dpms force off

bat=$(acpi -a)
if [ "$bat" = "Adapter 0: on-line" ]; then
	sleep 60; pgrep i3lock && xset dpms force off
else
	sleep 60; pgrep i3lock && systemctl suspend
fi