在本地用maven打包项目：

    mvn -DskipTests=true clean package      #maven打包命令

    命令执行完成后, 在应用目录/target/下会有打出来的包,

    如本例子中的 cyril-spring-boot-demo-1.0-SNAPSHOT.jar
     如果需要打包，则：

                    在当前目录下执行编译镜像

                        #cyril/jardemo 镜像名字

                        #. Dockerfile文件在当前文件夹下

                        docker build -t cyril/jardemo:0.1 .

                    等编译好后运行容器

                        docker run -d --name jardemo -p 8989:8080 -d cyril/jardemo:0.1

                    查看运行状态

                        docker ps

或者直接运行

执行可运行的jar文件
       将test.jar放在虚拟机的/usr目录下，然后执行命令启动jar

        docker run -d -p 9090:8080 ﻿--restart always -v /usr/cyril-spring-boot-demo-1.0-SNAPSHOT.jar:/usr/cyril-spring-boot-demo-1.0-SNAPSHOT.jar --name springboot java:8u111  java -jar /usr/cyril-spring-boot-demo-1.0-SNAPSHOT.jar --server.port=8080

         -d 表示在后台启动

         -p 9090:8080 表示将容器的端口 映射成宿主主机的端口，否则9090端口访问不到

         -v /usr/cyril-spring-boot-demo-1.0-SNAPSHOT.jar:/usr/cyril-spring-boot-demo-1.0-SNAPSHOT.jar 表示将宿主主机的jar文件，映射到容器中（分号前为宿主主机的路径，分号后为容器中的路径）

         --name springboot 表示为该容器取一个全局唯一的名称，这里我取的名称为springboot

        java:8u111 表示镜像文件的名称和tag

        java -jar /usr/cyril-spring-boot-demo-1.0-SNAPSHOT.jar   表示运行jar包，注意：这里的jar包为容器中的位置，是通过前面的-v属性映射的

        --server.port=8080    为指定运行时的端口



使用Maven命令进行打包

mvn package

运行：

java -jar target/cyril-spring-boot-demo-1.0-SNAPSHOT.jar

访问项目

如果程序正确运行，浏览器访问 http://localhost:8080/，可以看到页面 “Hello Docker World.” 字样。

Dockerfile中
    ENTRYPOINT 执行项目 app.jar。为了缩短 Tomcat 启动时间，添加一个系统属性指向 “/dev/urandom” 作为 Entropy Source
