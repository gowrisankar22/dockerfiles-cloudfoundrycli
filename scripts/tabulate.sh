#!/bin/bash

versions=(
    "07"
    "08"
    "09"
    "10"
    "11"
    "12"
    "13"
    "14"
    "15"
    "16"
    "17"
    "18"
    "19"
    "20"
    "21"
)

echo "| Image | Badge |"
echo "| ----- | ----- |"

image=lwieske/cloudfoundrycli:latest
docker pull $image > /dev/null 2>&1
    sizeB=`docker inspect --format='{{json .Size}}' $image`
    sizeMB=`echo "( ${sizeB} + 500000 )/ 1000000" | bc`
docker rmi $image > /dev/null 2>&1
echo "| ${image} | [![](https://img.shields.io/badge/size-${sizeMB}MB-blue.svg)]() |"

echo ""

length=${#versions[@]}

echo "| Image | Badge |"
echo "| ----- | ----- |"

for (( i=0; i<${length}; i++ ));
do
    version=${versions[length-$i-1]}
    image=lwieske/cloudfoundrycli:v6.${version}.0
    docker pull $image > /dev/null 2>&1
        sizeB=`docker inspect --format='{{json .Size}}' $image`
        sizeMB=`echo "( ${sizeB} + 500000 )/ 1000000" | bc`
    docker rmi $image > /dev/null 2>&1
    echo "| ${image} | [![](https://img.shields.io/badge/size-${sizeMB}MB-blue.svg)]() |"
done
