#!/bin/bash

rm -rf v*

# Full Version Strings
versions=( 7 8 9 10 11 12 13 14 15 )

length=${#versions[@]}

for (( i=1; i<${length}+1; i++ ));
do
  v=${versions[$i-1]}
v6.${v}.0
  mkdir v6.${v}.0
  cat Dockerfile.cli            >v6.${v}.0/Dockerfile
  sed -i '' -e s/VERSION/${v}/g  v6.${v}.0/Dockerfile
done
