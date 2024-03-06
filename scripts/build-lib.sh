#!/bin/sh

cmake -B build -S . -GNinja
cmake --build build
cmake --install build