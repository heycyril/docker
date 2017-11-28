#
# MAINTAINER        glodonedu
# DOCKER-VERSION    1.11.2
#
# Dockerizing CentOS7: Dockerfile for building CentOS images
#
FROM       registry.aliyuncs.com/glodonedu/jdk:1.8
MAINTAINER lp

RUN wget http://mirrors.tuna.tsinghua.edu.cn/apache/tomcat/tomcat-8/v8.5.23/bin/apache-tomcat-8.5.23.tar.gz && \
	tar -xvf apache-tomcat-8.5.23.tar.gz -C /opt/  && \
	mv /opt/apache-tomcat-8.5.23 /opt/tomcat8 && \
	rm -rf apache-tomcat-8.5.23.tar.gz && \
	rm -rf /opt/tomcat8/webapps/* 

#add tomcat config
ADD conf/logging.properties /opt/tomcat8/conf/
ADD conf/server.xml /opt/tomcat8/conf/
ADD bin/catalina.sh /opt/tomcat8/bin/

ADD supervisor_tomcat.conf /etc/supervisor.conf.d/

#tomcat home
ENV TOMCAT_HOME /opt/tomcat8

expose 8080
