#!/bin/sh

BASENAME="$(basename "$PWD")"
PWD="$(pwd)"

echo "PWD $PWD"
echo "BASENAME $BASENAME"

youtube-dl -f 'bestvideo[height<=720]+bestaudio/best[height<=720]/mp4' \
    --batch-file="$PWD/urls.txt" --output "$PWD/%(title)s.%(ext)s" \
    -i --encoding utf-8 \
    --all-subs --write-srt --convert-subs srt $@
#    -k \
