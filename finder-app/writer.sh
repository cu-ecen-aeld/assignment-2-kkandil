#!/bin/sh

writefile=$1
writestr=$2

if [ -z "$writefile" ]
then
	echo "writefile parameter is missing"
	exit 1
fi

if [ -z "$writestr" ]
then
	echo "writestr parameter is missing"
	exit 1
fi
direc=${writefile%/*}
mkdir -p $direc
echo $writestr >> $writefile
