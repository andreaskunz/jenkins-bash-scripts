#!/bin/bash

printHelp() {
	echo "  script must be run with the following arguments, which must be valid git references:"
	echo "  $0 eeros-framework-version sim-eeros-version"
	echo "  For example:"
	echo "  $0 master v1.0.0"
}


if [ $# -ne 2 ]
then
	echo "($0): error, two references needed."; printHelp;
	echo "exit 1"
	exit 1
fi

pushd eeros-framework
git checkout $1
popd

pushd sim-eeros
git checkout $2
popd

echo "($0): checkout versions done."

