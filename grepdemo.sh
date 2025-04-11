#!/bin/bash 
if ls -d abc;then
        echo "abc directory found"
elif ls -d bbc;then
        echo "bbc directory found"
else 
	echo " all condition are false"
fi
