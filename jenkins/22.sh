


https://mirrors.tuna.tsinghua.edu.cn/apache/maven/maven-3/3.5.4/binaries/apache-maven-3.5.4-bin.tar.gz


sudo docker run  --name cyril-jenkins -p 8585:8080 -p 50008:50000 -u root -d --env JAVA_OPTS="-Xms256m -Xmx512m  -XX:MaxNewSize=256m"  -v /var/run/docker.sock:/var/run/docker.sock   -v /usr/bin/docker:/usr/bin/docker   -v /home/jenkins:/var/jenkins_home  -v /usr/lib64/libltdl.so.7:/usr/lib/x86_64-linux-gnu/libltdl.so.7 gsy36559067/jenkins:2.92



sudo docker run  --name cyril-jenkins -p 8585:8080 -p 50008:50000 -u root -d -v /root/jenkins:/var/jenkins_home   gsy36559067/jenkins:2.130

docker run -d -p 8585:8080 -v /root/jenkins:/var/jenkins_home gsy36559067/jenkins:2.130