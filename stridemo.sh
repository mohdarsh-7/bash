#!/bin/bash
S1="LUCKNOW"
S2="lucknow"
S3="KANPUR"
S4="kanpur"
if [ $S1 = $S2 ]; then
	echo " $S1 and $S2 are same"
else
	echo " $S1 and $S2 are different"
fi
if  [ $S1 = $S3 ]; then
	echo " $S1 is not same as $S3"
else
	echo " $S1 is same as $S3"
fi 
