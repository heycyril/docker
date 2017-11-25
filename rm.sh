#!/bin/bash

aa=`docker ps -a | awk -F ' ' '{print $1}'`

for i in $aa
do
docker rm -f $i
done
fi


