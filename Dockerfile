FROM alpine:3.6

ADD https://github.com/shadowsocksr-backup/shadowsocksr/archive/manyuser.zip /app/ssr.zip
WORKDIR /app

# Demo configuration file - you should override it by using "-e" option in "docker run"
# ENV CONFIGURATION "{}"

# Port exposing: We won't expose it in Dockerfile, you should add "-p <server port>" in "docker run"
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

# TODO: Writing configuration to a file isn't a good idea.
CMD [ "python", "server.py", "-v", "-c", "/etc/shadowsocks/configuration.json" ]
