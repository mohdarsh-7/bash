#!/bin/bash
for file in $1
do
	#files"abc.txt"
	echo $1
	if [ -d $file ]
	then
		echo "files is a directory"
	else
		echo " files is not a directory"
			if [ -r $file ];then
				echo "$file is readable"
			else
				echo "$file is not readable"
			fi
			if [ -w $file ];then
				echo "$file is writeable"
			else
				echo "$file is not writeable"
			fi
			if [ -x $file ];then
				echo "$file is executable"
			else
				echo "$file is not executeable"
			fi
	fi
done
