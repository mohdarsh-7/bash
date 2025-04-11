#!/bin/bash
outfile='queries.backup'
IFS=','
while read firstname lastname age gender
do
	cat>> $outfile <<EOF
	INSERT INTO people (firstname,lastname,age,gender)
	VALUES ('$firstname','$lastname','$age','$gender');
EOF
done <${1}
