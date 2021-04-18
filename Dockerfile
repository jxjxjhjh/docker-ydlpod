FROM python:3

WORKDIR /app

RUN apt update && apt install ffmpeg -y
RUN pip install git+https://github.com/nbr23/ydl-podcast.git

RUN wget https://github.com/jxjxjhjh/docker-ydlpod/raw/main/run.sh
RUN chmod +x /app/run.sh
COPY /app/run.sh /var/

CMD ["/bin/sh", "-c", "/var/run.sh"]
