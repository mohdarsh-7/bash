#!/bin/bash
for((i=0 ; i<5 ; i++))
do
        for (( j=0 ; j<5 ; j++))
        do
                if [[ $j -eq 4-$i || $i -eq $j ]]
                then
                        echo -n "* "
                else
                        echo -n "  "
                fi
        done
        echo
done
