#!/bin/bash

STATE_FILE="$HOME/.config/hypr/land/toggleable_states/serious_mode"

props=(
    "general:gaps_in"
    "general:gaps_out"
    "general:border_size"
    "decoration:rounding"
)


if [ -f "$STATE_FILE" ]; then
    source $STATE_FILE
	#    for prop in "${!toStore[@]}"; do
	# part1=$(echo "$prop" | cut -d':' -f1)
	# part2=$(echo "$prop" | cut -d':' -f2)
	# hyprctl eval "hl.config({ $part1 = { $part2 = ${toStore[$prop]} } })"
	# notify-send "hl.config({ $part1 = { $part2 = ${toStore[$prop]} } })"
	# hyprctl keyword $prop ${toStore[$prop]}
	#    done
	# read -d '\n' eval_line << EndOfText
	# hl.config({
	# general = {
	# gaps_in = 9
	# }
	# })
	# EndOfText
	hyprctl eval << EOF
	    dil
	EOF

    notify-send "serious mode is off bruh 🥀"
    pkill waybar 
    waybar

else
    declare -A toStore


    for prop in ${props[@]}; do
	# basically, do hyprctl getoption *prop*, then get the first line, then get the part after ":"
	prop_value=$(hyprctl getoption $prop | awk 'NR==1 {sub(/^.*: /, ""); gsub(/ /, ","); print}')
	toStore[$prop]=$prop_value
	hyprctl keyword $prop 0

    done
    pkill waybar
    waybar --config ~/.config/waybar/serious/config.jsonc --style ~/.config/waybar/serious/style.css &
    notify-send "SERIOUS MODE IS ON 😈"
    declare -p toStore > $STATE_FILE
fi

