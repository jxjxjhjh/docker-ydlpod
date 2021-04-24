#!/bin/sh

python -m http.server 8001

while :
do
    timeout 600 ydl_podcast config.yaml
    echo $(date "+%Y-%m-%d %H:%M:%S") >> log.log
    pip install --upgrade youtube-dl
    sleep 86400
done
