#!/bin/bash

cloneRepositories() {
	git clone https://github.com/eeros-project/eeros-framework.git
	git clone https://github.com/eeros-project/sim-eeros.git
	# no checkout statements, so the master branches are used.
}


runUnitTests() {
# prepare environment
	export LD_LIBRARY_PATH=/usr/local/gcc-4.9.4/lib64:/var/lib/jenkins/workspace/eeros-project/eeros-integrationTest/unitTestWithSimulator/build-sim-eeros/lib:$LD_LIBRARY_PATH
	cd build-eeros-framework/test
	
	./unitTests -l sim
	return $? # exit code of line above
}


printHelp() {
	echo "script can be run with the following options:"
	echo "$0 -c   , will clone the repositories."
	echo "$0 -t   , will start the unit tests."
}


# main

# abord if no arguments given
if [[ -z "$*" ]]
then
	echo "($0): No arguments found. exit 1."
	printHelp
	exit 1
fi

# abord if first argument does not start with a "-"
if [[ ${1:0:1} != "-" ]]
then
	echo "($0): Argument must start with \"-\". exit 1."
	printHelp
	exit 1
fi

while getopts ct opt
do
	case $opt in
		c) cloneRepositories;;
		t) runUnitTests;;      
		?) echo "($0): Error during argument validation. exit 1."; printHelp; exit 1
	esac
done

