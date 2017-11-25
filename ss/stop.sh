#!/bin/bash
#

dpid=`docker ps |grep shadowsocks |grep -v "grep" |awk -F ' ' '{print $1}'`

for i in $dpid
do 
  docker stop $i
done
