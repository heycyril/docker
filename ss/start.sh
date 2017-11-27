#!/bin/bash
docker run -d --name shadowsocks-1 -p 60001:60001 gsy36559067/ss:0.1 -s 0.0.0.0 -p 60001 -k 123456 -m aes-256-cfb
