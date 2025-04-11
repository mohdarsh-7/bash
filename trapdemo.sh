#!/bin/bash
trap "echo ' signal is trapped'" SIGINT
count=1
while [ $count -lt 10 ]
do
	echo "$count"
	sleep 2
	count=$[$count+1]
	if [ $count -eq 5 ]
	then
		trap -- SIGINT
	fi
done

