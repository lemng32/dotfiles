#!/usr/bin/env bash

exec waybar

SOCKET=$XDG_RUNTIME_DIR/hypr/${HYPRLAND_INSTANCE_SIGNATURE}/.socket2.sock

socat - UNIX-CONNECT:$SOCKET | while read -r line; do
  if [[ "$line" == "openlayer>>waybar" ]]; then
    sleep 0.5
    if hyprctl monitors | grep -q "HDMI-A-2"; then
      killall -SIGUSR1 waybar
    fi
    break
  fi
done
