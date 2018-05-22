#!/bin/bash

fullfilename=$(basename -- "$@")
fullpath=$(pwd)
extension="${fullfilename##*.}"
filename="${fullfilename%.*}"

fqfilename="$fullpath/$fullfilename"

# Fetch subs
cd /home/av/bin/pipenv3
pipenv run subliminal download -l en "$fqfilename"
pipenv run subliminal download -l es "$fqfilename"
pipenv run subliminal download -l pt-BR "$fqfilename"
pipenv run subliminal download -l fr "$fqfilename"
pipenv run subliminal download -l it "$fqfilename"
cd -

# Get rid of BOM's if already UTF-8
dos2unix *.srt

# Convert to UTF-8
for file in *.srt
do
    iconv -c -f ISO-8859-1 -t UTF-8 -o "$file.new" "$file" &&
    mv -f "$file.new" "$file"
done
