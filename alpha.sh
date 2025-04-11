#!/bin/bash
voidAlphaNum(){
	validchars="$(echo $1 | sed -e 's/[^[:alnum:]]//g')"
	if [ "$validchars" = "$1" ];then
		return 0
	else
		return 1
	fi
}
/bin/echo -n "Enter String:"
read input
if ! voidAlphaNum "$input" ;then
	echo "Invalid String" >&2
	exit
else
	echo "Valid String"
fi
exit 0 
