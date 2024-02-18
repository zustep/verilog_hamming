#!/bin/bash

if [ ! -d "build" ]; then
  echo "build directory doesn't exist."
  mkdir build
fi

cd build

iverilog ../src/$1.v -o $1
iverilog ../tests/test_$1.v -o test_$1

./test_$1