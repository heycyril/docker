#!/bin/bash


#mkdir data
chown -R 1000.1000 data
docker run -d -p 8181:8080 -p 50001:50000 -u root -v `pwd`/data:/var/jenkins_home gsy36559067/jenkins:2.92
#docker run -d -p 8080:8080 -p 50000:50000 -v `pwd`/data:/var/jenkins_home jenkins/jenkins:2.92-alpine
