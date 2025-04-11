#!/bin/bash
. ./myfunc.sh 
value1=10
value2=5
result1=$(add $value1 $value2)
result2=$(mux $value1 $value2)
result3=$(div $value1 $value2)
echo "$result1"
echo "$result2"
echo "$result3"
