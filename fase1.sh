#!/bin/bash

sudo ./net-conf.sh && sudo ./hostname-config.sh && sudo ./install-pkgs.sh && echo 1 > mark1

sudo reboot