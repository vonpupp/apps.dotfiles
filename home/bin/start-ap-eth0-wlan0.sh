envdir ~/.envars/create_ap/secured /bin/sh -c \
    '
    sudo ~/bin/create_ap/create_ap wlan0 eth0 $CREATE_AP_ESSID $CREATE_AP_PASSWD
    '
