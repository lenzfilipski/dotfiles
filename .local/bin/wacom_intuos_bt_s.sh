#!/bin/bash
sleep 1

exec > /tmp/red-wacom.log
exec 2>&1

export DISPLAY=:0
export XAUTHORITY=/home/lenz/.Xauthority

# set area to screen aspect ratio
xsetwacom set "Wacom Intuos BT S Pen stylus" Area 0 0 15200 8550

# mapping for xournal++
xsetwacom set "Wacom Intuos BT S Pad pad" Button 1 "key +ctrl z -ctrl"
xsetwacom set "Wacom Intuos BT S Pad pad" Button 3 "key +ctrl shift e -ctrl"
xsetwacom set "Wacom Intuos BT S Pad pad" Button 8 "key +ctrl shift d -ctrl"
xsetwacom set "Wacom Intuos BT S Pad pad" Button 2 "key +ctrl d -ctrl"

exit 0
