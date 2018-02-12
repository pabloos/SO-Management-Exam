#!/bin/bash

marca1=$(cat mark1)
marca2=$(cat mark2)

if [ $marca1 -eq 0 ] && [ $marca2 -eq 1 ]; then
    sudo ./dns-test.sh
fi
