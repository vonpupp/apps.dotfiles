#!/bin/zsh

GEOM="300x200"
urxvt -geometry $GEOM -e sh -c 'zsh -li ~/bin/task-dashboard' &
#wmctrl -r TASK-DASH -b toggle,fullscreen &

urxvt -geometry $GEOM -e sh -c 'zsh -li ~/bin/start-ledger-es.sh' &
urxvt -geometry $GEOM -e sh -c 'zsh -li ~/bin/start-newsbeuter.sh' &
urxvt -geometry $GEOM -e sh -c 'zsh -li ~/bin/start-irssi.sh' &
