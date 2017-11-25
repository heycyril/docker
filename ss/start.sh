#!/bin/bash
docker run -d --name shadowsocks-1 -p 60001:60001 gsy36559067/shadowsocks:0.0 -s 0.0.0.0 -p 60001 -k guo36559067 -m aes-256-cfb
docker run -d --name shadowsocks-2 -p 60002:60002 gsy36559067/shadowsocks:0.0 -s 0.0.0.0 -p 60002 -k guo36559067 -m aes-256-cfb
docker run -d --name shadowsocks-3 -p 60003:60003 gsy36559067/shadowsocks:0.0 -s 0.0.0.0 -p 60003 -k guo36559067 -m aes-256-cfb
docker run -d --name shadowsocks-4 -p 60004:60004 gsy36559067/shadowsocks:0.0 -s 0.0.0.0 -p 60004 -k guo36559067 -m aes-256-cfb
docker run -d --name shadowsocks-5 -p 60005:60005 gsy36559067/shadowsocks:0.0 -s 0.0.0.0 -p 60005 -k guo36559067 -m aes-256-cfb
docker run -d --name shadowsocks-6 -p 60006:60006 gsy36559067/shadowsocks:0.0 -s 0.0.0.0 -p 60006 -k guo36559067 -m aes-256-cfb
docker run -d --name shadowsocks-7 -p 60007:60007 gsy36559067/shadowsocks:0.0 -s 0.0.0.0 -p 60007 -k guo36559067 -m aes-256-cfb
