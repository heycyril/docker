#!/bin/bash

aa=`docker images| grep none | awk -F ' ' '{print $3}'`

for i in $aa
do
docker rmi -f $i
done
fi


