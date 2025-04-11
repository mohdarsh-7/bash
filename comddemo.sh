#!/bin/bash
if [ $# -eq 0 ]
then
	echo "no argument passed"
else
	for name in $*
	do
		echo "$name"
	done
fi


