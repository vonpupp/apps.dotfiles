#!/bin/bash

find . -type f -name "*.rrst" -exec ~/bin/knitr.sh '{}' \;
