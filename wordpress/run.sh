#`docker run --name w-test-1 --link=mysql-2:db  --net mysql_default -p 10005:80 -d gsy36559067/wordpress:0.1
docker run --name w-test-1 --link=mysql-2:db  --net mysql_default -e WORDPRESS_DB_HOST=198.181.39.141:13334 -e WORDPRESS_DB_USER=root -e WORDPRESS_DB_PASSWORD=guo123.COM -p 10008:80 -d gsy36559067/wordpress:0.1
