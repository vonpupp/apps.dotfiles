#!/bin/bash

#filter="Pesach|Shavuot|Kippur|Sukkot|Hashana"
filter="Esther|Purim|Pesach|Shavuot|Kippur|Sukkot|Shmini Atzeret|Hashana|Chanukah"

# List all
hebcal -reE -d | egrep --color=auto "$filter|^"

# List filtered
#hebcal -reE -d | egrep --color=auto "$filter"
