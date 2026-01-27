#!/bin/bash

STATE_FILE="$HOME/.config/hypr/.serious_mode"

if [ -f "$STATE_FILE" ]; then
    # Normal mode
    hyprctl keyword general:gaps_in 5
    hyprctl keyword general:gaps_out 10
    hyprctl keyword decoration:rounding 10
    rm "$STATE_FILE"
else
    # Serious mode
    hyprctl keyword general:gaps_in 0
    hyprctl keyword general:gaps_out 0
    hyprctl keyword decoration:rounding 0
    touch "$STATE_FILE"
fi

