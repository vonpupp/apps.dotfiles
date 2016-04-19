#!/bin/bash
# Source
# https://wiki.archlinux.org/index.php/Update_packages_from_crontab
# Awesome vicius widget
# https://bbs.archlinux.org/viewtopic.php?id=172302

sudo pacman -Syuwq --noconfirm
#UPDATE_FOLDER=/var/tmp/sys-updates
#mkdir -p $UPDATE_FOLDER && pacman --noconfirm --dbpath $UPDATE_FOLDER -Syw $(CHECKUPDATES_DB=$UPDATE_FOLDER checkupdates) > /dev/null

#MAILTO=your@email
#LOGFILE=/var/log/cron-pacman.log
#
## 1. minute (0-59)
## |   2. hour (0-23)
## |   |   3. day of month (1-31)
## |   |   |   4. month (1-12)
## |   |   |   |   5. day of week (0-7: 0 or 7 is Sun, or use names)
## |   |   |   |   |   6. commandline
## |   |   |   |   |   |
##min hr  dom mon dow command
#00   13   *   *   *  . /etc/profile && (echo; date; pacman -Syuq --noconfirm) &>>$LOGFILE || (echo 'pacman failed!'; tail $LOGFILE; false)
