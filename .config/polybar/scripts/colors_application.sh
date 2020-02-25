#!/bin/bash

## Author : Aditya Shakya
## Github : adi1090x

# Custom Rofi Script

BORDER="#CC6666"
SEPARATOR="#FFFFFF"
FOREGROUND="#141C21"
BACKGROUND="#FFFFFF"
BACKGROUND_ALT="#F5F5F5"
HIGHLIGHT_BACKGROUND="#E7E7E7"
HIGHLIGHT_FOREGROUND="#CC6666"

BLACK="#000000"
WHITE="#ffffff"
RED="#e53935"
GREEN="#43a047"
YELLOW="#fdd835"
BLUE="#1e88e5"
MAGENTA="#00897b"
CYAN="#00acc1"
PINK="#d81b60"
PURPLE="#8e24aa"
INDIGO="#3949ab"
TEAL="#00897b"
LIME="#c0ca33"
AMBER="#ffb300"
ORANGE="#fb8c00"
BROWN="#6d4c41"
GREY="#757575"
BLUE_GREY="#546e7a"
DEEP_PURPLE="#5e35b1"
DEEP_ORANGE="#f4511e"
LIGHT_BLUE="#039be5"
LIGHT_GREEN="#7cb342"


SDIR="$HOME/.config/polybar/scripts"

# Launch application menu
rofi -no-lazy-grab -show drun \
-display-drun "Applications :" -drun-display-format "{name}" \
-hide-scrollbar true \
-bw 0 \
-lines 8 \
-line-padding 8 \
-padding 20 \
-width 30 \
-xoffset 10 -yoffset 710 \
-location 1 \
-columns 2 \
-show-icons -icon-theme "McMojave-circle-dark" \
-font "Terminus (TTF) 9" \
-color-enabled true \
-color-window "$BACKGROUND,$BORDER,$SEPARATOR" \
-color-normal "$BACKGROUND_ALT,$FOREGROUND,$BACKGROUND_ALT,$HIGHLIGHT_BACKGROUND,$HIGHLIGHT_FOREGROUND" \
-color-active "$BACKGROUND,$MAGENTA,$BACKGROUND_ALT,$HIGHLIGHT_BACKGROUND,$HIGHLIGHT_FOREGROUND" \
-color-urgent "$BACKGROUND,$YELLOW,$BACKGROUND_ALT,$HIGHLIGHT_BACKGROUND,$HIGHLIGHT_FOREGROUND"