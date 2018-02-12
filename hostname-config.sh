#!/bin/bash

read -p "Introduce el nombre del controlador de dominio: " HOSTNAME

sudo echo $HOSTNAME > /etc/hostname

sudo hostname $HOSTNAME

echo "edita ahora el archivo /etc/hosts con el nombre de controlador solo y con el dominio en la lina 127.0.1.1"

sleep 5

sudo vim /etc/hosts