#if [ -d /etc/X11/xinit/xinitrc.d ] ; then
#for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do [ -x "$f" ] && . "$f" done unset f fi

session=${1:-i3}
#session=${1:-gnome}
~/.fehbgrand &
lxpolkit &
dunst &
discord &
setxkbmap -option caps:escape
case $session in 
	i3|i3wm		) exec i3;;
	kde		) exec startkde;;
	lightdm		) exec /usr/bin/lightdm;;
	xfce|xfce4	) exec startxfce4;;
	lxde		) exec startlxde;;
	lxdm		) exec lxdm;;
	gnome		) exec gnome-session;;
	mate		) exec mate-session;;
	# No known session. Try to run it as command
	*		) exec $1;;
esac
