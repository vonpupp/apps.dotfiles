#!/bin/sh

BASENAME="$(basename "$PWD")"
PWD="$(pwd)"

echo "PWD $PWD"
echo "BASENAME $BASENAME"

youtube-dl -f 'bestvideo[height<=480]+bestaudio/best[height<=480]/mp4' \
    --batch-file="$PWD/urls.txt" --output "$PWD/%(title)s-%(id)s.%(ext)s" \
    -i --encoding utf-8 \
    --write-sub --write-auto-sub --sub-lang en --convert-subs srt \
    $@
#    --all-subs --write-srt --convert-subs srt $@
#    -k \
