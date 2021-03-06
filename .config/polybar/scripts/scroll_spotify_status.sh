#!/bin/bash

# see man zscroll for documentation of the following parameters
zscroll -l 30 \
        --delay 0.1 \
		--match-command "playerctl_no_stderr" \
        --match-text "Playing" "--scroll 1" \
        --match-text "Paused" "--scroll 0" \
        --match-text "No player could handle this command" "--scroll 0" \
        --update-check=true '/home/lenz/.config/polybar/scripts/get_spotify_status.sh' &

wait
