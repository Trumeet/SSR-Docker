[![](https://img.shields.io/docker/build/thnuiwelr/ssr-docker.svg)](https://hub.docker.com/r/thnuiwelr/ssr-docker/)
[![](https://img.shields.io/docker/pulls/thnuiwelr/ssr-docker.svg)](https://hub.docker.com/r/thnuiwelr/ssr-docker/)
[![](https://img.shields.io/microbadger/image-size/thnuiwelr/ssr-docker.svg)](https://hub.docker.com/r/thnuiwelr/ssr-docker/)


# SSR-Docker
This is an unoffical docker implementation for [shadowsocksr-backup/shadowsocksr](https://github.com/shadowsocksr-backup/shadowsocksr). It is for personal usage only.

Please use it according your local laws.

# Usage
It wraps a ssr program, you can just replace any `python server.py` command to `docker run --rm -d -p <port>:<port_insude> thnuiwelr/ssr-docker`.

Here is a simple example which uses `configuration json` as configuration.

```shell
$ docker run -p 2333:2333 \ 
    -v /path/to/your/configuration/file.json:/etc/shadowsocks/configuration.json \ # Should be synced with the path below
    -d \ # Run in background
    thnuiwelr/ssr-docker \
    -v -c /etc/shadowsocks/configuration.json # The arguments are passed to server.py
```

# About the program
I use [shadowsocksr-backup/shadowsocksr](https://github.com/shadowsocksr-backup/shadowsocksr), if you'd like to use another one, you should edit `Dockerfile` and build image manually.

# License
WTFPL - Don't worry about it.
