#!/bin/bash
/usr/bin/xset -dpms
/usr/bin/xset s 0 0
/usr/bin/xset s noblank
/usr/bin/xrandr --output HDMI-1 --mode 640x480 --pos 0x0
/usr/bin/xrandr --output eDP-1 --pos 641x0
cd /home/yellow/Desktop/TV-head-player
/usr/bin/pd -send "debug 0" tv-head-vid.pd &
/usr/bin/sleep 5
/usr/bin/pd tv-head-main.pd &
