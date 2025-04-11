#!/bin/bash
#exec 3<> testfile
#read line <&3
#echo "read $line"
#echo "this is a test line" >&3
#exec 3> testfile
#echo "this is a test line " >&3
#exec 3>&-
#echo " this is another line " >&3
exec 3> testfile
exec 7< test2
lsof -a -p $$ -d 0,1,2,3,7
