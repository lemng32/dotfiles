#!/usr/bin/env bash

chosen=$(printf "󰐥 Power Off\n󰜉 Restart\n󰤄 Sleep\n󰌾 Lock" \
  | rofi -dmenu -theme "power-menu/rofi_power.rasi")

label=$(echo "$chosen" | cut -d' ' -f2-)

case "$label" in
  "Power Off") systemctl poweroff ;;
  "Restart") systemctl reboot ;;
  "Sleep") systemctl suspend ;;
  "Lock") loginctl lock-session ;;
  *) exit 1 ;;
esac
