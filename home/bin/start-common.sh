#!/bin/zsh

GEOM="300x200"

# Productivity
urxvt -geometry $GEOM -e sh -c 'zsh -li ~/bin/task-dashboard' &
#wmctrl -r TASK-DASH -b toggle,fullscreen &
# mutt

# News and social
urxvt -geometry $GEOM -e sh -c 'zsh -li ~/bin/start-rainbowstream.sh' &
urxvt -geometry $GEOM -e sh -c 'zsh -li ~/bin/start-newsbeuter.sh' &
urxvt -geometry $GEOM -e sh -c 'zsh -li ~/bin/start-irssi.sh' &
# cortex

# Personal stuff
urxvt -geometry $GEOM -e sh -c 'zsh -li ~/bin/start-ledger-es.sh' &
# ncmcpp
