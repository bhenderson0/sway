#!/usr/bin/env bash

entries="Active Screen Output Area Window"

selected=$(printf '%s\n' $entries | wofi --conf=$HOME/.config/wofi/config.power | awk '{print tolower($1)}')

case $selected in 
    active)
        grimshot save active;;
    screen)
        grimshot save screen;;
    output)
        grimshot save output;;
    area)
        grimshot save area;;
    window)
        grimshot save window;;
esac
