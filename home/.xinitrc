#!/bin/sh

#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#

erresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

case "$1" in
    openbox) exec openbox-session ;;
    fluxbox) exec startfluxbox ;;
    xfce4) exec startxfce4 ;;
    KDE3|kde3) exec startkde ;;
    gnome) exec gnome-session ;;
    e17) exec /usr/bin/enlightenment_start ;;
    pekwm) exec /usr/bin/pekwm ;;
    ratpoison) exec ratpoison ;;
    awesome) exec awesome ;;
    dwm) exec $HOME/bin/dwm_run ;;
    wmii) exec wmii ;;
    *) exec openbox-session ;;
esac
