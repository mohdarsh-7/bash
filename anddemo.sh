#!/bin/bash
x=10
y=20
z=30
if [[ ++x < ++y ]] || [[ ++y < ++z ]]; then
	echo " true  "
else
	echo " is false "
fi 
