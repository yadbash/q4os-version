#!/bin/bash

#Script to display which version Q4OS you are using on your computer

IMAGES_DIR=$HOME/Programming/images
version=$(grep -Po '(?<=GNU/Linux )[0-9]+' /etc/issue 2>/dev/null)

yad --title="YadBash.com" --text="Now Checking Q4OS Version" --center --timeout=3 --width=300 --height=300 --no-buttons

case "$version" in 

8) 
IMAGES_DIR=$HOME/Programming/images
yad --title="You are Running Q4OS" --center --form --columns=1 --no-buttons \
--width=300 \
--height=300 \
--image $IMAGES_DIR/q4os_scorpion.jpg
;; 

9) 
yad --text="Q4OS Orion"
;; 

esac