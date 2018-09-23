#!/bin/sh

# Source:
# https://gist.github.com/umidjons/8a15ba3813039626553929458e3ad1fc

BASENAME="$(basename "$PWD")"
PWD="$(pwd)"

echo "PWD $PWD"
echo "BASENAME $BASENAME"

youtube-dl \
	--download-archive downloaded.txt \
	--no-overwrites -ict \
	--yes-playlist \
	--extract-audio --audio-format mp3 --audio-quality 0 \
	--socket-timeout 5 \
	$@
