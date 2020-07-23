#!/bin/bash

killall sleep
pl_status=1

while :
do
	if [ -z "$(playerctl status 2>/dev/null)" ]; then
		if [ $pl_status == '1' ]; then
			echo "cmd:hide" >> "/tmp/polybar_mqueue.$(pgrep -f "polybar player")"
			pl_status=0
		fi
	else
		if [ $pl_status == '0' ]; then
			echo "cmd:show" >> "/tmp/polybar_mqueue.$(pgrep -f "polybar player")"
			pl_status=1
		fi
	fi
	sleep 2
done

