#!/bin/bash
i=0
j=0
for file in $1
do
        if [ -d $file ]
        then
              	i=$[ $i + 1 ]
        else
                j=$[ $j + 1 ]
        fi
done
echo "file: $j "
echo "dirctories: $i"
