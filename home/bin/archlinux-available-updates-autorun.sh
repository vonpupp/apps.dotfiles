#!/bin/bash

# Source:
# https://shapeshed.com/managing-packages-on-arch-linux/
# https://bbs.archlinux.org/viewtopic.php?id=184002

RND=$(( ( RANDOM % 10 )  + 1 ))
echo "RND=$RND"
if [ "$RND" -le 3 ]; then
    AVAILABLE_UPDATES=$(checkupdates)
    PAC_UPDATES=$(echo "$AVAILABLE_UPDATES" | wc -l)
    KERNEL_UPDATES=$(echo "$AVAILABLE_UPDATES" | pcregrep '^linux ' | wc -l)
    #AUR_UPDATES=$(cower -u | wc -l)

    # Dirty solution for trailing CRLF when no updates, not such a big deal
    if [ "$PAC_UPDATES" -ge 2 ]; then
        echo "PACMAN available updates: $PAC_UPDATES"
    fi
    if [ "$KERNEL_UPDATES" -ge 1 ]; then
        echo "KERNEL available updates: $KERNEL_UPDATES"
    fi
    #if [ "$AUR_UPDATES" -ge 1 ]; then
    #    echo "   AUR available updates: $AUR_UPDATES"
    #fi

    if [ "$PAC_UPDATES" -ge 20 ]; then
        notify-send "Pending updates:" "$(echo "$AVAILABLE_UPDATES")";
    fi
fi
