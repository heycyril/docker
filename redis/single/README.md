
docker启动redis并设置密码

docker run --name redis-test -p 6379:6379 -d \
--restart=always redis:latest \
redis-server --appendonly yes \
--requirepass "your passwd"

-p 6379:6379 :将容器内端口映射到宿主机端口(右边映射到左边) 
redis-server –appendonly yes : 在容器执行redis-server启动命令，并打开redis持久化配置 
requirepass “your passwd” :设置认证密码 
–restart=always : 随docker启动而启动