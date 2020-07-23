#!/bin/bash

if [ -z "$(playerctl status 2>/dev/null)" ]; then
	echo "No player"

elif [ "$(playerctl --player=playerctld status)" = "Stopped" ]; then
	echo "No music is playing"
elif [ "$(playerctl --player=playerctld status)" = "Paused"  ]; then
	polybar-msg -p "$(pgrep -f "polybar player")" hook spotify-play-pause 2 >/dev/null
	playerctl --player=playerctld metadata --format "{{ title }} - {{ artist }}"
else # Can be configured to output differently when player is paused
	polybar-msg -p "$(pgrep -f "polybar player")" hook spotify-play-pause 1 >/dev/null
	playerctl --player=playerctld metadata --format "{{ title }} - {{ artist }}"
fi
