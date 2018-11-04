# SSR-Docker
This is an unoffical docker implementation for [shadowsocksr-backup/shadowsocksr](https://github.com/shadowsocksr-backup/shadowsocksr). It is for personal usage only.

Please use it according your local laws.

# Usage
Please install Docker on an Linux device first.
Then, you should prepare your own `user-config.json`, then rename it to `configuration.json`. This is an example:

```json
{
    "server": "0.0.0.0",
    "server_ipv6": "::",
    "server_port": 2333,
    "local_address": "127.0.0.1",
    "local_port": 1080,

    "password": "pwd",
    "method": "aes-128-ctr",
    "protocol": "auth_aes128_md5",
    "protocol_param": "",
    "obfs": "tls1.2_ticket_auth",
    "obfs_param": "",
    "speed_limit_per_con": 0,
    "speed_limit_per_user": 0,

    "timeout": 120,
    "udp_timeout": 60,
    "dns_ipv6": false,
    "connect_verbose_info": 0,
    "redirect": "",
    "fast_open": false
}
```

Finally, run this command to launch SSR, you should change some options into your own configurations:
```shell
$ docker run -p 2333 \ # Change it to your own port
-v /path/to/your/configuration/file/:/etc/shadowsocks \ # Change the path to the FOLDER which contains configuration.json, not the file.
thnuiwelr/ssr-docker
```

# About the program
I use [shadowsocksr-backup/shadowsocksr](https://github.com/shadowsocksr-backup/shadowsocksr), if you'd like to use another one, you should edit `Dockerfile` manually.

# License
WTFPL - Don't worry about it.
