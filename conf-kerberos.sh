#!/bin/bash

echo 'sustituyendo el krb5.conf'

sudo mv /etc/krb5.conf /etc/krb5.conf.old

sudo ln -sf /var/lib/samba/private/krb5.conf /etc/krb5.conf

echo 'ahora tienes que lanzar el kinit administrator@TU.DOMINIO'
echo 'y despues tienes que poner el klist'
echo
