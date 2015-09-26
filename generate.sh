#!/bin/bash

rm -rf v*

# Full Version Strings
versions=(
  v6.1.0
  v6.2.0
  v6.3.0
  v6.4.0
  v6.5.0
  v6.6.0
  v6.7.0
  v6.8.0
  v6.9.0
  v6.10.0
  v6.11.0
  v6.12.0
  v6.12.1
  v6.12.2
  v6.12.3
  v6.12.4
)

length=${#versions[@]}

for (( i=1; i<${length}+1; i++ ));
do
  v=${versions[$i-1]}
  mkdir ${v}
  cat Dockerfile.cli            >${v}/Dockerfile
  sed -i '' -e s/VERSION/${v}/g  ${v}/Dockerfile
done
