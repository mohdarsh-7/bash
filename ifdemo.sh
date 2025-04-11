#!/bin/bash
x=7
read x
if [ "$x" -eq 10 ]; then 
	echo " x is equal to 10"
elif [ "$x" -eq 5 ]; then 
	echo " x is equal to 5"
else
	echo " x is something else"
fi
