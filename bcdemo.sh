#!/bin/bash
a=2
b=5
c=10
var=$(bc << EOF
scale=4
x=($a/$b)
x*$c
EOF
)
echo "Result is $var" 
