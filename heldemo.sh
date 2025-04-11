#!/bin/bash
#for(( i=0 ; i<10 ; i++ ))
#for (( i=0 ; i<10 ;  ))
#for ((  ;  ;  ))
#do
#	echo "hello"
#done
#for ((i=0 ; i<10 ;i++))
#do
#	if [ $i -eq 5 ]
#	then
#		break
#		continue
#	fi
#	echo " $i "
#done
#for ((i=0;i<5;i++))
#do
#	for((j=0;j<5;j++))
#	do
#		echo " $i $j"
#	done
#done
#for ((i=1;i<=5;i++))
#do
#	for ((j=i;j<=5;j++))
#	for ((j=5;j>=i;j--))
#	do
#		echo -n "x"
#	done
#	echo
#done
for((i=1 ; i<=5 ; i++))
do
	for (( j=5 ; j>=1 ; j--))
	do
		if [ $j -gt $i ]
		then
			echo -n " "
		else
			echo -n "x"
		fi
	done
	echo
done
