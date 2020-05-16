#!/bin/bash

INTERVAL=20

while true; do
    msg=$(check_mail)
    echo $msg

    sleep $INTERVAL
done
