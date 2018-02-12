#!/bin/bash

read -p "Introduce el nombre del controlador de dominio: " HOSTNAME
read -p "introduce el nombre del dominio: " DOMINIO

host -t SRV _ldap._tcp.$DOMINIO

host -t SRV _kerberos._udp.$DOMINIO

host -t A $HOSTNAME.$DOMINIO`