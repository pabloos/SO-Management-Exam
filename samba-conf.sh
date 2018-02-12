#!/bin/bash

sudo apt-get install samba smbclient

sudo mv /etc/samba/smb.conf /etc/samba/smb.conf.old

sudo samba-tool domain provision --use-rfc2307 --interactive

echo "ahora quita el servidor dns 8.8.8.8 del interfaces"

sleep 5

sudo vim /etc/network/interfaces

echo "reiniciando para aplicar..."

sleep 2

sudo reboot