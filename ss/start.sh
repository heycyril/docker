#!/bin/bash
#docker run -d --name shadowsocks-1 -p 60001:60001 gsy36559067/ss:0.1 -s 0.0.0.0 -p 60001 -k 123456 -m aes-256-cfb
docker run -dt --name ss -p 60001:60001 gsy36559067/ss:0.3 -s "-s 0.0.0.0 -p 60001 -m aes-256-cfb -k guo123.COM --fast-open"


#官方的
docker run -d -e METHOD=aes-256-cfb -e PASSWORD=guo123.COM -p 8388:8388 --restart always gsy36559067/ss:0.4
