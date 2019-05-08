#!/bin/bash

pushd build/sim-eeros/
make
make install
popd

echo "($0): installed version: v$(ls install/lib/ | grep libsimeeros.so. | cut -c16-)"

echo "($0): make sim-eeros done."

