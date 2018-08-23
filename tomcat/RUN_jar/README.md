在本地用maven打包项目：

    mvn -DskipTests=true clean package      #maven打包命令

    命令执行完成后, 在应用目录/target/下会有打出来的包,

    如本例子中的 daemon_test-1.0.jar

在当前目录下执行编译镜像

    #cyril/jardemo 镜像名字

    #. Dockerfile文件在当前文件夹下

    docker build -t cyril/jardemo:0.1 .

等编译好后运行容器

    docker run -d --name jardemo -p 8989:8080 -d cyril/jardemo:0.1

查看运行状态

    docker ps



