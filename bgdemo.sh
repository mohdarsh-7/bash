#!/bin/bash
exec 3> bkt.txt
i=1
while [ $i -lt 10000000 ]
do
	echo "this is iteration no:$i" >&3
	i=$[$i+1]

done
