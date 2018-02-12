#!/bin/bash

echo 'sustituyendo el krb5.conf'

sudo mv /etc/krb5.conf /etc/krb5.conf.old

sudo ln -sf /var/lib/samba/private/krb5.conf /etc/krb5.conf

read -p "introduce el nombre del controlador de dominio: " HOSTNAME
read -p "introduce el nombre del dominio: " DOMAIN

kinit administrator@$DOMAIN

klist

sudo smbclient -L $HOSTNAME.$DOMAIN -U%

sudo smbclient //localhost/netlogon -U 'administrator'