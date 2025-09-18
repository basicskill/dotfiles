#!/bin/bash

INTERVAL=6

while true; do
    msg=$(iwgetid | grep -Po '(?<=").*(?=")')
    echo $msg

    sleep $INTERVAL
done
