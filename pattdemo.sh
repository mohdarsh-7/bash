#!/bin/bash
for((i=1 ; i<=5 ; i++))
do
        for (( j=1 ; j<=5 ; j++))
        do
                if [[ $i -eq 1 || $i -eq 5 || $j -eq 1 || $j -eq 5 ]]
                then
                        echo -n "* "
                else
                        echo -n "  "
                fi
        done
        echo
done
