shadowsocks-libev 版本: 3.1.1
kcptun 版本: 20171127

docker run -dt --name ss -p 6443:6443 mritd/shadowsocks -s "-s 0.0.0.0 -p 6443 -m aes-256-cfb -k test123 --fast-open"

支持选项
-m : 指定 shadowsocks 命令，默认为 ss-server
-s : shadowsocks-libev 参数字符串
-x : 开启 kcptun 支持
-e : 指定 kcptun 命令，默认为 kcpserver
-k : kcptun 参数字符串

选项描述
-m : 参数后指定一个 shadowsocks 命令，如 ss-local，不写默认为 ss-server；该参数用于 shadowsocks 在客户端和服务端工作模式间切换，可选项如下: ss-local、ss-manager、ss-nat、ss-redir、ss-server、ss-tunnel
-s : 参数后指定一个 shadowsocks-libev 的参数字符串，所有参数将被拼接到 ss-server 后
-x : 指定该参数后才会开启 kcptun 支持，否则将默认禁用 kcptun
-e : 参数后指定一个 kcptun 命令，如 kcpclient，不写默认为 kcpserver；该参数用于 kcptun 在客户端和服务端工作模式间切换，

可选项如下: kcpserver、kcpclient
-k : 参数后指定一个 kcptun 的参数字符串，所有参数将被拼接到 kcptun 后
