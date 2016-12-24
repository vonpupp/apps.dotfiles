#!/bin/bash
# Source: https://bbs.archlinux.org/viewtopic.php?id=93683

tar -cjf /root/pacman-database.tar.bz2 /var/lib/pacman/local
pacman -Rscn $(pacman -Qtdq)
pacman -Sc
pacman-optimize && sync
updatedb

exit 0
