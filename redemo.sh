#!/bin/bash
#if read -s -t 5 -p "Enter Username:" uname
#then
#	echo "your username is $uname"
#else
#	echo "you should enter username within 5 seconds"
#fi
read -n1 -p "[Y/N] to proceed:"
case $REPLY in
	Y|y)
		echo " your answer is yes ";;
	N|n)
		echo " your answer is no ";;
	*)
		echo " you have entered wrong answer";;
esac
