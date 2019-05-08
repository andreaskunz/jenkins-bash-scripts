#!/bin/bash

export LD_LIBRARY_PATH=$WORKSPACE/install/lib/:$GCC_4_9_4_LIB_PATH:$LD_LIBRARY_PATH
cd build/eeros-framework/test

./unitTests -l sim

echo "($0): run unit tests done."

