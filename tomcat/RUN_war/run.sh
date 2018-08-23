#!/bin/bash
#
#在当前目录下执行编译镜像
#docker build -t cyril/wardemo:0.1 .

#将打包好的war包拷贝到webapps下面

#等编译好后运行容器
#docker run -d -p 8282:8080 -v /docker/docker/tomcat/conf:/usr/local/tomcat/conf  -v /docker/docker/tomcat/webapps:/usr/local/tomcat/webapps --name tomcat-test-1 docker.io/gsy36559067/tomcat:0.0.1

docker run -d -p 8383:8080 --privileged=true -v /root/tomcat/docker/tomcat/RUN_war/conf:/usr/local/tomcat/conf -v /root/tomcat/docker/tomcat/RUN_war/logs:/opt/tomcat/logs -v /root/tomcat/docker/tomcat/RUN_war/webapps:/usr/local/tomcat/webapps --name tomcat-test-1 gsy36559067/tomcat:8.0.1

#docker run -d -p 8383:8080 --privileged=true -v /root/tomcat/docker/tomcat/RUN_war/conf:/usr/local/tomcat/conf -v /root/tomcat/docker/tomcat/RUN_war/logs:/opt/tomcat/logs -v /root/tomcat/docker/tomcat/RUN_war/webapps:/usr/local/tomcat/webapps --name tomcat-test-1 cyril/wardemo:0.1

#查看运行状态
docker ps
