
docker启动redis并设置密码

docker run -d --name myredis -p 6379:6379 redis --requirepass "mypassword"
