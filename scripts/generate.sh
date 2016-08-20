#!/bin/bash

rm -rf v*

# Full Version Strings
versions=( 10 11 12 13 14 15 16 17 18 19 20 21 )

length=${#versions[@]}

for (( i=1; i<${length}+1; i++ ));
do
  v=${versions[$i-1]}
  mkdir v6.${v}.0
  cat Dockerfile.cli            >v6.${v}.0/Dockerfile
  sed -i '' -e s/VERSION/${v}/g  v6.${v}.0/Dockerfile
done
