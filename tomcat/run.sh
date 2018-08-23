#!/bin/bash
#

docker run -d -p 8383:8080 -v /docker/docker/tomcat/conf:/usr/local/tomcat/conf -v /data/tomcat/logs:/opt/tomcat/logs -v /docker/docker/tomcat/webapps:/usr/local/tomcat/webapps --name tomcat-test-1 gsy36559067/tomcat:8.0.1
