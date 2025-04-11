#!/bin/bash
tempfile=$(mktemp -t tmp.XXXXXX)
#echo "this is first line" | tee $tempfile
#echo "this is second line" | tee -a $tempfile
echo "this is first line" > $tempfile
echo "this is second line">>$tempfile
echo "location:$tempfile"
cat $tempfile
