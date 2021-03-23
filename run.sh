#!/bin/sh

python -m http.server 8001 && timeout 300 ydl_podcast config.yaml > log.txt && yacron -c crontab.yaml
