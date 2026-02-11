#!/bin/bash

STATE_FILE="$HOME/.config/hypr/hyprland/toggleable_states/serious_mode"

props=(
    "general:gaps_in"
    "general:gaps_out"
    "general:border_size"
    "decoration:rounding"
)


if [ -f "$STATE_FILE" ]; then
    source $STATE_FILE
    for prop in "${!toStore[@]}"; do
	hyprctl keyword $prop ${toStore[$prop]}
	
    done
    rm "$STATE_FILE"
    notify-send "serious mode is off bruh 🥀"

else
    declare -A toStore


    for prop in ${props[@]}; do
	# basically, do hyprctl getoption *prop*, then get the first line, then get the part after ":"
	prop_value=$(hyprctl getoption $prop | awk 'NR==1 {sub(/^.*: /, ""); gsub(/ /, ","); print}')
	toStore[$prop]=$prop_value
	hyprctl keyword $prop 0

    done
    notify-send "SERIOUS MODE IS ON 😈"
    declare -p toStore > $STATE_FILE
fi

