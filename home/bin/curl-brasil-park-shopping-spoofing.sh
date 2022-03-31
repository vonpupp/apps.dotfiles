#!/usr/bin/env bash

IFACE="wlan0"
MAC="c0:ee:fb:47:fc:1b"
CONN_ID="vonpupp@gmail.com"
#CONN_ID="11980286464"

#sudo ifconfig $IFACE down
#sudo macchanger --mac=$MAC $IFACE
#sudo ifconfig $IFACE up

curl "https://h001srv022.aser.com.br/controller.php?action=login&termo=$CONN_ID&mac=$IFACE&gw=10.58.0.45"
