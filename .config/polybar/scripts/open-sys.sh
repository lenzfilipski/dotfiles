#!/bin/sh

polybar sys-info &
ps aux| grep "polybar open-sys-info"| head -1 | tr -s ' ' |cut -d' ' -f2 | xargs kill
#polybar close-sys-info -r & 
