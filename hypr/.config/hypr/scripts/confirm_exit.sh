#!/usr/bin/env bash

LOCK="/tmp/exit.lock"

if [ -f "$LOCK" ]; then
  rm "$LOCK"
  hyprctl dispatch exit
else
  touch "$LOCK"
  hyprctl notify -0 10000 "rgb(ff0000)" "fontsize:11  Press again to exit"
  sleep 10 && rm "$LOCK" &
fi
