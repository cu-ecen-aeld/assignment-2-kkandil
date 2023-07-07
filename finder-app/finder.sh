#!/bin/sh

filesdir=$1
searchstr=$2

if [ -z "$filesdir" ]
then
	echo "filesdir parameter is missing"
	exit 1
fi

if [ -z "$searchstr" ]
then
	echo "searchstr parameter is missing"
	exit 1
fi

if [ ! -d $filesdir ]
then
	echo "filesdir does not represent a directory"
	exit 1
fi


numberOfFiles=$(find $filesdir -type f | wc -l)
numberOfLines=$(grep -R $searchstr $filesdir | wc -l)
 
echo "The number of files are ${numberOfFiles} and the number of matching lines are ${numberOfLines}"
echo "run"


	
