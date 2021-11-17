#!/usr/bin/env bash
killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
polybar -q bar -c ~/.config/polybar/config.ini &
polybar -q bar -c ~/.config/polybar/config2.ini &
