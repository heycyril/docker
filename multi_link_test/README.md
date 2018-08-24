docker build -t kel/app .
  408  docker images
  409  docker run -itd --name app --link redis:redis -p 7654:80 635
  410  docker pull redis/redis
  411  docker pull redis:3.0.0

  415  docker run -itd --name redis  -p 1234:6379 6b81
  416  netstat -anpt |grep 1234
  417  docker ps -a
docker run -itd --name app --link redis:redis -p 4321:80 635
  419  curl localhost:4321

  428  docker rm -f 3f8de485b036
  429  docker run -itd --name app --link redis:redis -p 4321:80 635
