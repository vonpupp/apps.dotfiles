#!/bin/bash

#filter="Pesach|Shavuot|Kippur|Sukkot|Hashana"
filter="Shabbat|Pesach I|Pesach VIII|Shavuot I|Kippur|Sukkot I|Shmini Atzeret|Hashana"

# List all
# hebcal -reE -d | egrep --color=auto "$filter|^"

# List filtered
hebcal -reE -d | egrep --color=auto -w "$filter"
