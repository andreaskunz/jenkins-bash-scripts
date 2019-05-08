#!/bin/bash

echo "set(REQUIRED_EEROS_VERSION $(ls install/lib/ | grep libeeros.so. | cut -c13-) CACHE STRING \"required EEROS version\")" >> cMake_preloadScript.txt

echo "($0): bypass version check done."

