#!/bin/sh

# Source: https://docs.syncthing.net/users/versioning.html#external-file-versioning

# Lets assume I have a folder "default" in ~/Sync, and that within that folder there is a file docs/letter.txt that is being replaced or deleted. The script will be called as if I ran this from the command line:

# $ /Users/jb/bin/syncthing-archive.sh /Users/jb/Sync docs/letter.txt

# Local test:
# # ~/bin/syncthing-archive.sh /share/android/oneplus2/Camera OpenCamera/IMG_20201011_144705.jpg
# Expected:
# # mv /share/android/oneplus2/Camera/OpenCamera/IMG_20201011_144705.jpg /share/android/oneplus2/Camera/<archive>/OpenCamera/IMG_20201011_144705.jpg

set -eu

# The parameters we get from Syncthing
folderpath="$1"
filepath="$2"

# Where I want my versions stored
versionspath="$folderpath/archive"

# First ensure the dir where we need to store the file exists
outpath=`dirname "$versionspath/$filepath"`
mkdir -p "$outpath"
# Then move the file there
mv -f "$folderpath/$filepath" "$versionspath/$filepath"
