#!/bin/bash
x="/etc/passwd"
if [ -s $x ]; then
	echo " $x is an existing file"
	if [ -x $x ]; then
		echo " $x is  exuteable"
	else
		echo " $x is not exuteable"
	fi
else
	echo " $x is not exist "
fi
