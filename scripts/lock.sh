#!/usr/bin/env bash

icon="$HOME/Pictures/Lock/circlelock.png"
tmpbg='/tmp/screen.png'

(( $# )) && { icon=$1; }

maim "$tmpbg"
convert "$tmpbg" -scale 5% -scale 2000% "$tmpbg"
convert "$tmpbg" -gravity center -composite -matte "$tmpbg"
i3lock -i "$tmpbg" --screen 1 --clock --indicator
rm $tmpbg
