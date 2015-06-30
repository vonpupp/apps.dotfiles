#!/bin/sh

REGEX="s/.*[0-9]\{1,\}:[0-9]\{1,\}: \{0,\}//"
diatheke -b nlt-se $@ | head -n -2 | sed "$REGEX" | tr '\n' ' '
