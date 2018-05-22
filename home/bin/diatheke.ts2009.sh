#!/bin/sh

REGEX="s/.*[0-9]\{1,\}:[0-9]\{1,\}: \{0,\}//"
diatheke -b TS2009 -k $@ # | head -n -2 | sed "$REGEX" | tr '\n' ' '
