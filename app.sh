#!/bin/sh

python3 -m http.server 8001

while true
do
timeout 1200 ydl_podcast config/config.yaml
sleep 87654
done
