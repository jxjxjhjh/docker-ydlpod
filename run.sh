#!/bin/sh

while :
do
    sleep 600
    timeout 180 ydl_podcast config.yaml
    sleep 86400
done
