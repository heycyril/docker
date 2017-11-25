#!/bin/bash
#


#Scale out the instance number of sentinel
docker-compose scale sentinel=3
#Scale out the instance number of slave
docker-compose scale slave=2

#And get the sentinel infomation with following commands
#docker exec cluster_sentinel_1 redis-cli -p 26379 SENTINEL get-master-addr-by-name mymaster

