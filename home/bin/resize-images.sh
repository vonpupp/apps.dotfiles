#!/bin/sh

PWD="$(pwd)"
find . -iname \*.JPG -exec convert -verbose -quality 80 -resize 800x600 "{}" "$PWD/RESIZE/{}" \;
