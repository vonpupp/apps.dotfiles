#!/bin/sh

# Source:
# https://gist.github.com/umidjons/8a15ba3813039626553929458e3ad1fc

BASENAME="$(basename "$PWD")"
PWD="$(pwd)"

echo "PWD $PWD"
echo "BASENAME $BASENAME"

youtube-dl \
    -i --extract-audio --audio-format mp3 --audio-quality 0 \
    --batch-file="$PWD/urls.txt" --output "$PWD/%(title)s.%(ext)s" \
	$@

# --download-archive downloaded.txt \
# --no-overwrites -ict \
# --yes-playlist \
# --extract-audio --audio-format mp3 --audio-quality 0 \
# --socket-timeout 5 \
