#!/bin/bash
killall -q polybar
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

# launch on all monitors
# PROBLEM: bar with music and zscroll not working as expected
#if type "xrandr"; then
	#for m in $(xrandr --query | grep " connected" | cut -d" " -f 1); do
		#if [ $m == "eDP1" ]; then
			#MONITOR=$m polybar workspace -r &
			#MONITOR=$m polybar player -r &
			#MONITOR=$m polybar status -r &
		#fi
	#done
#else
	#polybar example -r &
	polybar workspace -r &
	polybar player -r &
	#polybar sys-info -r &
	polybar status -r &
	#polybar -c /usr/share/doc/polybar/config example -r &
#fi

# display the player bar only if there is a player running
#while :
#do
	#if [ -z "$(pgrep -f 'polybar player')" ]; then
		#if [ -n "$(playerctl status 2> /dev/null)" ]; then
			#polybar player &
		#fi
	#elif [ -n "$(pgrep -f 'polybar player')" ]; then
		#if [ -z "$(playerctl status 2> /dev/null)" ]; then
			#kill $(pgrep -f 'polybar player')
			#while pgrep -f 'polybar player' > /dev/null; do sleep 1; done
		#fi
	#fi
#done

# auto-hide
#sleep 1
#echo "cmd:hide" >> "/tmp/polybar_mqueue.$(pgrep -f "polybar sys-info")"
