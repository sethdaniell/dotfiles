#!/bin/bash

lock="󰌾 lock"
suspend="󰤄 sleep"
logout="󰍃 logout"
reboot="󰑓 reboot"
shutdown="󰐥 shutdown"

chosen=$(printf "%s\n" "$lock" "$suspend" "$logout" "$reboot" "$shutdown" | rofi -dmenu -p "" -theme ~/.config/rofi/powermenu.rasi)

case $chosen in
    "$lock") hyprlock ;;
    "$suspend") systemctl suspend ;;
    "$logout") niri msg action quit ;;
    "$reboot") systemctl reboot ;;
    "$shutdown") systemctl poweroff ;;
esac
