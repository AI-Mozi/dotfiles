#!/bin/bash

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar eDP1-top &
polybar eDP1-bottom &
polybar HDMI-top &

echo "Polybar launched..."
