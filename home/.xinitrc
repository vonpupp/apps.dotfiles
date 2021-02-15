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
# Using alock-git
# xautolock -time 10 -locker "alock -bg blank -auth pam -bg shade:shade=30,blur=70" &
xss-lock -- "$HOME/bin/start-locker.sh" &

# XSCREENSAVER
#xscreensaver-command -exit
#xscreensaver &
#xscreensaver -no-splash &

# XRDB
xrdb -merge ~/.Xresources

# ALSA
amixer set Master unmute

# Xkbmap
setxkbmap -layout eu

# Compton
#compton -bfzcCG --backend glx --vsync opengl-swc --paint-on-overlay -D5 -r6 -l-8 -t-8
#compton -bfzCG --backend glx --vsync opengl-swc --paint-on-overlay -D5 -r6 -l-8 -t-8
#xcompmgr -c -C -t-5 -l-5 -r4.2 -o.55 &

# Read: https://wiki.archlinux.org/index.php/Intel_graphics#Xorg_configuration
# For the time being, I am stuck to not use slim due to some freaking intel
# graphics bug...
exec dbus-launch awesome > $HOME/.config/awesome/stdout.log 2> $HOME/.config/awesome/stderr.log
#exec awesome

## START THE WM
#case "$1" in
#    openbox) exec openbox-session ;;
#    fluxbox) exec startfluxbox ;;
#    xfce4) exec startxfce4 ;;
#    KDE3|kde3) exec startkde ;;
#    gnome) exec gnome-session ;;
#    e17) exec /usr/bin/enlightenment_start ;;
#    pekwm) exec /usr/bin/pekwm ;;
#    ratpoison) exec ratpoison ;;
#    awesome) exec dbus-launch awesome > $HOME/.config/awesome/stdout.log 2> $HOME/.config/awesome/stderr.log ;;
#    dwm) exec $HOME/bin/dwm_run ;;
#    wmii) exec wmii ;;
#esac
