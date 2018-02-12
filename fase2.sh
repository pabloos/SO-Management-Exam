#!/bin/bash

marca=$(cat mark1)

if [ $marca -eq 1 ]; then
    echo "añade los parametros necesarios al archivo /etc/fstab"
    sleep 5
    sudo vim /etc/fstab
    sudo ./ntp.sh && sudo ./samba-conf.sh && echo 1 > mark2 && echo 0 > mark1

    echo "reiniciando para aplicar..."
    sleep 2
    sudo reboot
fi
