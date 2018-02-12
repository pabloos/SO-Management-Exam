#!/bin/bash

sudo service ntp stop 

sudo apt-get install ntpdate

sudo ntpdate -B 0.ubuntu.pool.ntp.org && sudo service ntp start