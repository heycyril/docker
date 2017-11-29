#!/bin/bash
#
docker run -d -p 8080:8080 -v /docker/docker/tomcat/ROOT:/usr/local/tomcat/webapps/ROOT -v /data/tomcat/logs:/opt/tomcat/logs -v /docker/docker/tomcat/temp:/usr/local/tomcat/temp --name tomcat-test-1 gsy36559067/tomcat:8.0.1
