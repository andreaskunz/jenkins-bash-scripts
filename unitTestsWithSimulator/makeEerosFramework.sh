#!/bin/bash

pushd build/eeros-framework/
make
make install
popd

echo "($0): installed version: v$(ls install/lib/ | grep libeeros.so. | cut -c13-)"

echo "($0): make eeros-framework done."

