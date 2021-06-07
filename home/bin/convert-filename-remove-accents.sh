#!/usr/bin/env bash
 find . -type f -exec bash -c 'mv "$1" "${1%/*}/$(iconv -f UTF8 -t ASCII//TRANSLIT <<< ${1##*/})"' -- {} \;
