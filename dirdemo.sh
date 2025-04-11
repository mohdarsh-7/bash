#!/bin/bash
for file in /home/acer/bin/*
do
	if [ -d $file ]
	then
		echo "$file is a directory"
	else
		echo "$file is a file"
	fi
done
