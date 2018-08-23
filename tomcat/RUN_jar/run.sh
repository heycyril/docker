#!/bin/bash
#

#docker run -d -p 8383:8080 -v /docker/docker/tomcat/conf:/usr/local/tomcat/conf -v /data/tomcat/logs:/opt/tomcat/logs -v /docker/docker/tomcat/webapps:/usr/local/tomcat/webapps --name tomcat-test-1 gsy36559067/tomcat:8.0.1

#在当前目录下执行编译镜像
docker build -t cyril/jardemo:0.1 .

#等编译好后运行容器
docker run -d --name jardemo -p 8989:8080 cyril/jardemo:0.1

#查看运行状态
docker ps
