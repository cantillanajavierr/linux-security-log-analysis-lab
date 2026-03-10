#!/bin/bash

LOGFILE="/var/log/auth.log"

if [ ! -f "$LOGFILE" ]; then
    LOGFILE="/var/log/secure"
fi

echo "Using log file: $LOGFILE"
echo

echo "===== Failed Authentication Attempts ====="
sudo grep -Ei "failed|failure|authentication" $LOGFILE | wc -l
echo

echo "===== Recent Authentication Failures ====="
sudo grep -Ei "failed|failure|authentication" $LOGFILE | tail -n 10
echo

echo "===== Recent Sudo Activity ====="
sudo grep "sudo" $LOGFILE | tail -n 1
