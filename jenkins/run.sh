#!/bin/bash


#mkdir data
chown -R 1000.1000 data
#docker run -d -p 8080:8080 -p 50000:50000 -u root -v `pwd`/data:/var/jenkins_home gsy36559067/jenkins:2.92
#docker run -d -p 8080:8080 -p 50000:50000 -v `pwd`/data:/var/jenkins_home jenkins/jenkins:2.92-alpine

sudo docker run  --name cyril-jenkins \
-p 8585:8080 -p 50008:50000 -u root -d \
--env JAVA_OPTS="-Xms256m -Xmx512m  -XX:MaxNewSize=256m"  \
-v /var/run/docker.sock:/var/run/docker.sock   \
-v /usr/bin/docker:/usr/bin/docker  \
-v /usr/java/jdk1.8.0_131:/usr/local/jdk  \
-v /usr/local/maven:/usr/local/maven  \
-v `pwd`/data:/var/jenkins_home  \
-v /usr/lib64/libltdl.so.7:/usr/lib/x86_64-linux-gnu/libltdl.so.7 \
gsy36559067/jenkins:2.92

#sudo docker run --memory 1.5G  --name buxiaoxia-jenkins \
#-p 18181:8080 -p 50000:50000 -u root -d \
#--env JAVA_OPTS="-Xms256m -Xmx512m  -XX:MaxNewSize=256m"  \
#-v /var/run/docker.sock:/var/run/docker.sock   \
#-v /usr/bin/docker:/usr/bin/docker  \
#-v /home/buxiaoxia/software/jenkins:/var/jenkins_home  \
#-v /usr/lib64/libltdl.so.7:/usr/lib/x86_64-linux-gnu/libltdl.so.7 \
#buxiaoxia/jenkins:1.0