#!/bin/bash

rofi_command="rofi -columns 2 -lines 1 -theme themes/powermenu.rasi"

# Based on original work of Vahnrr >> https://gitlab.com/vahnrr/dots/blob/master/i3-laptop/rofi/scripts/powermenu.sh

# Each of the icon is a selectable element
options='\n'

chosen="$(echo "$options" | $rofi_command -font "FontAwesome 60" -dmenu)"
case $chosen in
    ) # Shutdown the computer
        systemctl poweroff
        ;;
    ) # Log out of the current session
        exit
        ;;
esac

