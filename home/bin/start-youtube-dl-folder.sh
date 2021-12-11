#!/bin/sh

BASENAME="$(basename "$PWD")"
PWD="$(pwd)"

echo "PWD $PWD"
echo "BASENAME $BASENAME"

youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4' \
    --batch-file="$PWD/urls.txt" --output "$PWD/%(title)s-%(id)s.%(ext)s" \
    -i --encoding utf-8 \
    --write-sub --write-auto-sub --sub-lang en --convert-subs srt \
    $@
#    --exec "set I={}& ffmpeg -hide_banner -i {} -c copy -f matroska !I:.mp4=!.mkv & rm {}" \
#    --recode-video mkv \
#    --sub-lang en --sub-lang pt --sub-lang es \
#    --all-subs --write-srt --convert-subs srt $@
#    -k \
