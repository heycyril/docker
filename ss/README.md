you can 

docker run -d -e METHOD=aes-256-cfb -e PASSWORD=guo123.COM -p 8388:8388 --restart always gsy36559067/ss:0.4

or

docker-compose

shadowsocks-1:

  image: gsy36559067/ss:0.1
  
  ports:
    - "60001:8388"
    - "60002:8388"
    - "60003:8388"
    - "60004:8388"
    - "60005:8388"
    - "60006:8388"
    - "60007:8388"
    - "60008:8388"
    - "60009:8388"
  environment:
    - METHOD=aes-256-cfb
    - PASSWORD=guo123.COM
  restart: always
  container_name: ss-0.1
