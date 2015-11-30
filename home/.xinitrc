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

# XAUTOLOCK
xautolock -time 10 -locker ~/bin/start-locker.sh &

# XSCREENSAVER
#xscreensaver-command -exit
#xscreensaver &
#xscreensaver -no-splash &

# XRDB
xrdb -merge ~/.Xresources

# ALSA
amixer set Master unmute


# START THE WM
case "$1" in
    openbox) exec openbox-session ;;
    fluxbox) exec startfluxbox ;;
    xfce4) exec startxfce4 ;;
    KDE3|kde3) exec startkde ;;
    gnome) exec gnome-session ;;
    e17) exec /usr/bin/enlightenment_start ;;
    pekwm) exec /usr/bin/pekwm ;;
    ratpoison) exec ratpoison ;;
    awesome) exec awesome >> ~/.cache/awesome/stdout 2>> ~/.cache/awesome/stderr ;;
    dwm) exec $HOME/bin/dwm_run ;;
    wmii) exec wmii ;;
esac
