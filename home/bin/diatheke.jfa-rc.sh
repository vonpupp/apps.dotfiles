#!/bin/sh

REGEX="s/.*[0-9]\{1,\}:[0-9]\{1,\}: \{0,\}//"
diatheke -b jfa-rc $@ | head -n -2 | sed "$REGEX" | tr '\n' ' '
