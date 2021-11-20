#!/bin/bash
scrot -s '%r | %a %b %d %Y.png'
notify-send "Screenshot taken!"
cd
mv *.png ~/Pictures/Screenshots/
