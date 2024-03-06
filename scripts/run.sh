#!/bin/sh

if ! [ -d ./lib-name ]; then
  sh build-lib.sh
fi

if ! [ -f ./main ]; then
  sh build.sh
fi

LD_LIBRARY_PATH=$(pwd)/lib-name/lib ./main