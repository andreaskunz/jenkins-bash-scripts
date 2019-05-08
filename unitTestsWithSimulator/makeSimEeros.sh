#!/bin/bash

pushd build/sim-eeros/
make
make install
popd

echo "($0): make sim-eeros done."

