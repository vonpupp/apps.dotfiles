#!/bin/bash

# Source:
# https://shapeshed.com/managing-packages-on-arch-linux/

PMUPDATES="$(pacman -Qqu | wc -l)"
AURUPDATES="$(cower -u | wc -l)"

echo "Pacman available updates: $PMUPDATES"
echo "AUR available updates: $AURUPDATES"
