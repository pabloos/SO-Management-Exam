#!/bin/bash

read -p "introduce el nombre del dominio: " DOMINIO

host -t SRV _ldap._tcp.$DOMINIO

host -t SRV _kerberos._udp.$DOMINIO

host -t A smb-dc.$DOMINIO