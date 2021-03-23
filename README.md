https://github.com/nbr23/ydl-podcast
非官方docker镜像

1.安装
```
docker run -d --name ydlpod \
    -p 80:8001 \
    -v /var/www:/app \
    --restart unless-stopped \
    jxjxjhjh/ydlpod
```
2.初始化

修改config.yaml后手动运行一次

docker exec -it ydlpod ydl_podcast config.yaml

config.yaml 请参考 https://github.com/nbr23/ydl-podcast

PS：项目设定为23：23定时运行，可修改crontab.yaml改变配置，修改后需要docker restart ydlpod重启容器以生效。

3.手动编写opml

请参考本项目中的相关文件，放在 /var/www 中可直接访问

PS：因缺乏技术，本项目未做任何安全性设置，项目文件全部暴露在网址下，任何人均可随意下载，有安全需求者建议自行进行安全性巩固。
