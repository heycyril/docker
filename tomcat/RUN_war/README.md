在当前目录下执行编译镜像

    #cyril/jardemo 镜像名字

    #. Dockerfile文件在当前文件夹下

    docker build -t cyril/wardemo:0.1 .

等编译好后运行容器

    docker run -d -p 8282:8080 -v /docker/docker/tomcat/conf:/usr/local/tomcat/conf -v /data/tomcat/logs:/opt/tomcat/logs -v /docker/docker/tomcat/webapps:/usr/local/tomcat/webapps --name tomcat-test-1 cyril/wardemo:0.1

查看运行状态

    docker ps



