https://github.com/nbr23/ydl-podcast
非官方docker镜像

安装
```
docker run -d --name ydlpod \
    -p 80:8001 \
    -v /var/www:/app \
    --restart unless-stopped \
    jxjxjhjh/ydlpod:1.1.0
```

1：目前可用版本为1.1.0，请指定版本使用。
2：搞不定容器内定时拉取功能，请使用宿主机crontab等定时任务执行ydl-podcast的拉取命令。
