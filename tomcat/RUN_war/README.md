在当前目录下执行编译镜像

    #cyril/wardemo 镜像名字

    #. Dockerfile文件在当前文件夹下

    docker build -t cyril/wardemo:0.1 .

等编译好后运行容器

docker run -d -p 8383:8080 --privileged=true -v /root/tomcat/docker/tomcat/RUN_war/conf:/usr/local/tomcat/conf -v /root/tomcat/docker/tomcat/RUN_war/logs:/opt/tomcat/logs -v /root/tomcat/docker/tomcat/RUN_war/webapps:/usr/local/tomcat/webapps --name tomcat-test-1 gsy36559067/tomcat:8.0.1

    其中：–privileged=true是授予docker挂载的权限
查看运行状态

    docker ps



