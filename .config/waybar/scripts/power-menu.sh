#!/usr/bin/env bash

entries="Poweroff Reboot Suspend Lock Logout"

selected=$(printf '%s\n' $entries | wofi --conf=$HOME/.config/wofi/config.power | awk '{print tolower($1)}')

case $selected in 
        poweroff)
                ;&
        reboot)
                ;&
        suspend)
                systemctl $selected
                ;;
        lock)
		swaylock
                ;;
        logout)
                swaymsg exit
                ;;
esac
