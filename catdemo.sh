#!/bin/bash
cat abc.txt| while read data
do
	echo "$data"
done
