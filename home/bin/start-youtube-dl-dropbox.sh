#!/bin/sh

youtube-dl --batch-file="$HOME/Dropbox/appdata/youtube-dl/urls.txt" --output "$HOME/Downloads/youtube-videos/%(title)s.%(ext)s" $@
