#!/bin/sh

dwmblocks &

syncthing -no-browser &

[[ -f ~/.config/.Xmodmap ]] && xmodmap ~/.config/.Xmodmapus

xmodmap -e 'clear lock' & 

while true; do
	dwm >/dev/null 2>&1
done

exec dwm
