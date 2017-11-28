#
# MAINTAINER        glodonedu
# DOCKER-VERSION    1.11.2
#
# Dockerizing CentOS7: Dockerfile for building CentOS images
#
FROM   gsy36559067/tomcat:8.0.1
MAINTAINER lp

#install dubbo-admin
RUN wget http://o9ko4774t.bkt.clouddn.com/dubbo-admin-2.5.4.war && \
	mv dubbo-admin-2.5.4.war ROOT.war && \ 
	unzip ROOT.war -d /opt/tomcat8/webapps/ROOT && \
	rm -rf ROOT.war

#使用环境变量的形式替换dubbo.properties中的固定值
RUN sed -i 's/zookeeper:\/\/127\.0\.0\.1:2181/${REGISTRY_ADDRESS}/g' $TOMCAT_HOME/webapps/ROOT/WEB-INF/dubbo.properties && \ 
    sed -i 's/=root/=${ROOT_PASSWORD}/g' $TOMCAT_HOME/webapps/ROOT/WEB-INF/dubbo.properties && \ 
    sed -i 's/=guest/=${GUEST_PASSWORD}/g' $TOMCAT_HOME/webapps/ROOT/WEB-INF/dubbo.properties

#设置默认值
ENV REGISTRY_ADDRESS zookeeper://127.0.0.1:2181
ENV ROOT_PASSWORD root
ENV GUEST_PASSWORD guest


