#!/bin/bash
#if [ -d /etc/X11/xinit/xinitrc.d ] ; then
#for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do [ -x "$f" ] && . "$f" done unset f fi

#LANG=ru_RU.UTF-8
session=${1:-i3}
~/.fehbgrand &
lxpolkit &
xcompmgr &
dunst &
discord &
sleep 3 && kitty weechat &
setxkbmap -option caps:escape
xmodmap ~/.Xmodmap
case $session in 
	i3|i3wm     ) exec i3;;
	kde         ) exec startkde;;
	plasma      ) exec startplasma-x11;;
	lightdm     ) exec /usr/bin/lightdm;;
	xfce|xfce4	) exec startxfce4;;
	lxde        ) exec startlxde;;
	lxdm        ) exec lxdm;;
	gnome       ) exec gnome-session;;
	mate        ) exec mate-session;;
	# No known session. Try to run it as command
	*		) exec $1;;
esac
