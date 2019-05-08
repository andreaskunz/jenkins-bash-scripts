#!/bin/bash

pushd build/eeros-framework/
make
make install
popd

echo "($0): make eeros-framework done."

