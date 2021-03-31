#!/bin/sh

dwmblocks &

syncthing -no-browser &

[[ -f ~/.config/.Xmodmap ]] && xmodmap ~/.config/.Xmodmapcaps

xmodmap -e 'clear lock' & 

while true; do
	dwm >/dev/null 2>&1
done

#exec dbus-launch --exit-with-session dwm

exec dwm

#exec startplasma-x11
