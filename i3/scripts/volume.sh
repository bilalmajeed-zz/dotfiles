#!/bin/bash
OUTPUT=$(awk -F"[][]" '/dB/ { print $2 }' <(amixer sget Master))
VOLUME=${OUTPUT::-1}

if amixer get Master | grep -q off; then
	echo " " 0%
elif [ $((${VOLUME})) -gt 0 ]; then
	if [ $((${VOLUME})) -gt 60 ]; then
		echo " " ${VOLUME}%
	else
		echo " " ${VOLUME}%
	fi
else
	echo " " ${VOLUME}%
fi