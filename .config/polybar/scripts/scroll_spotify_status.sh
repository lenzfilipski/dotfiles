#!/bin/bash

# see man zscroll for documentation of the following parameters
#		--match-command "playerctl_no_stderr" \
#--match-command "/home/lenz/.local/bin/playerctl_no_stderr" \

zscroll -l 30 \
        --delay 0.1 \
        --match-command "playerctl status" \
        --match-text "Playing" "--scroll 1" \
        --match-text "Paused" "--scroll 0" \
        --match-text "No player could handle this command" "--scroll 0" \
        --update-check=true "$HOME/.config/polybar/scripts/get_spotify_status.sh" &

wait
