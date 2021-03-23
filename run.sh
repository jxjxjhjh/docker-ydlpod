#!/bin/sh

python -m http.server 8001 && yacron -c crontab.yaml
