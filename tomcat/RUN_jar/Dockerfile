#基础镜像：仓库是java，tag是8-jre-alpine
#FROM java:8
FROM openjdk:8-jre-alpine

#将打包好的spring程序拷贝到容器中的指定位置
ADD ./cyril-spring-boot-demo-1.0-SNAPSHOT.jar /app.jar
#容器对外暴露8080端口
EXPOSE 8080
#容器启动后需要执行的命令
<<<<<<< HEAD
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -jar /daemon_test-1.0.jar"]
=======
ENV JAVA_OPTS=""
#CMD [ "sh", "-c", "java $JAVA_OPTS -jar /daemon_test-1.0.jar"]
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]
>>>>>>> 3cb5c0aaf05c9c6fab03c35c1c78b6ef12dcb93b
