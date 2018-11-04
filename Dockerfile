FROM alpine:3.6

ADD https://github.com/shadowsocksr-backup/shadowsocksr/archive/manyuser.zip /app/ssr.zip
WORKDIR /app

# Port exposing: We won't expose it in Dockerfile, you should add "-p <server port>:<server port>" in "docker run"
# EXPOSE 2333

RUN apk update && \
    apk add unzip && \
    unzip ssr.zip && \
    mv shadowsocksr-manyuser/shadowsocks/ . && \
    rm -rf /app/shadowsocksr-manyuser && \
    rm /app/ssr.zip && \
    apk del unzip && \
    apk add python
WORKDIR /app/shadowsocks

CMD [ "python", "server.py", "-v", "-c", "/etc/shadowsocks/configuration.json" ]
