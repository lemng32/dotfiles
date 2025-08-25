#!/usr/bin/env bash

INPUT=$(fcitx5-remote)

case "$INPUT" in
  "1")
    echo "EN";;
  "2")
    echo "VI";;
  *)
    echo "$INPUT";;
esac
