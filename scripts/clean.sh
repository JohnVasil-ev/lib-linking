#!/bin/sh

DIRS=("./build" "./lib-name")
FILES=("./main")

for dir in ${DIRS[@]}; do
  if [ -d "$dir" ]; then
    rm -rf $dir
  fi
done

for file in ${FILES[@]}; do
  if [ -f "$file" ]; then
    rm -rf $file
  fi
done
