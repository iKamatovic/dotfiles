#!/bin/bash

# Take a Screenshot
scrot -b 'screen.jpg'

# Converts screenshot to png and blurs it
convert screen.jpg -blur 15x15 blurred.png

# Put lock.png on blurred.png
composite -gravity center ~/Pictures/lock.jpg blurred.png /tmp/lock.png

# Remove tmp files
rm blurred.png screen.jpg

# Run i3lock
i3lock -i /tmp/lock.png -u -d -I 30
