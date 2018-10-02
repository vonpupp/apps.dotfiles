#!/bin/bash

# Source:
# https://shapeshed.com/managing-packages-on-arch-linux/
# https://bbs.archlinux.org/viewtopic.php?id=184002

PAC_UPDATES=$(checkupdates | wc -l)
KERNEL_UPDATES=$(checkupdates | pcregrep '^linux(-[^-\s]+)*(?<!-api)-headers$')
AUR_UPDATES=$(cower -u | wc -l)

echo "Pacman available updates: $PAC_UPDATES"
echo "AUR available updates: $AUR_UPDATES"

if [ "$PAC_UPDATES" -lt 20 ] && [ "$KERNEL_UPDATES" -eq 0 ]; then
    exit 0
elif [ "$PAC_UPDATES" -ge 20 ] || [ "$KERNEL_UPDATES" -ge 1 ]; then
    notify-send "Pending updates:" "$(checkupdates)";
    echo "PACKAGES: [ $PAC_UPDATES ]"
fi
