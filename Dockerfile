FROM alpine

RUN mkdir /opt/automysqlbackup && mkdir -p /root/.config/rclone && \
    apk update && \
    apk add rclone bash mysql-client

WORKDIR /opt/automysqlbackup

COPY . .

ENTRYPOINT ["/bin/sh", "run.sh"]
