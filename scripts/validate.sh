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

length=${#versions[@]}

for (( i=0; i<${length}; i++ ));
do
  version=${versions[length-$i-1]}
  image=lwieske/cloudfoundrycli:v6.${version}.0
  docker pull      ${image} > /dev/null 2>&1
  echo "***>"      ${image} "<***"
  docker run -i -t ${image} more /etc/os-release | grep PRETTY_NAME
  docker run -i -t ${image} cf -v
  docker rmi       ${image} > /dev/null 2>&1
  echo ""
done

image=lwieske/cloudfoundrycli:latest
docker pull      ${image} > /dev/null 2>&1
echo "***>"      ${image} "<***"
docker run -i -t ${image} more /etc/os-release | grep PRETTY_NAME
docker run -i -t ${image} cf -v
docker rmi       ${image} > /dev/null 2>&1
echo ""
