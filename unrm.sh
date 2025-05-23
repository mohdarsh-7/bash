#!/bin/bash
archivedir="$HOME/.deleted-files"
realrm="$(which rm)"
move="$(which mv)"
dest="$(pwd)"
if [ ! -d $archivedir ];then
	echo "$0:No deleted file directory" >&2
	exit 1
fi
cd $archivedir
if [ $# -eq 0 ];then
	echo "Contents of deleted file archive:"
	ls -FC | sed -e 's/\([[:digit:]][[:digit:]]\.\)\{5\}//g'  -e 's/^/ /'
	exit 0
fi
matches="$(ls -d *"$1" 2>/dev/null |wc -l)"
if [ $matches -eq 0 ];then
	echo "No match for\"$1\"in deleted file archive." >&2
	exit 1
fi
if [ $matches -gt 1 ];then
	echo "More than one file or directory match in the archive:"
	index=1
	for name in $(ls -td  *"$1")
	do
		datetime="$(echo $name | cut -c1-14| \ awk -F. '{ print $5"/"$4" at "$3":"$2":"$1 }')"
		filename ="$(echo $name | cut -c16-)"
		if [ -d $name ]; then
			filecount="$(ls $name | wc -l | sed 's /[^[:digit:]]//g')"
			echo " $index) $filename (contents = ${filecount} items, " \ "deleted = $datetime)"
		else
			size="$(ls -sdk1 $name | awk '{print $1}')"
			echo " $index) $filename (size = ${size}KB, deleted = $datetime)"
		fi
		index=$(( $index + 1))
	done
	echo ""
	/bin/echo  -n "Which version of $1 should I restore ('0' to quit)? [1] : "
	read desired
	if [ ! -z "$(echo $desired | sed 's/[[:digit:]]//g')"];then
		echo "$0: Restore canceled by user: invalid input." >&2
		exit 1
	fi
if [ ${desired:=1} -ge $index ];then
	echo "$0: Restored canceled by user: index value too big." >&2
	exit 1
fi
if  [ $desired -lt 1 ];then
	echo "$0: Restore canceled by user." .&2
	exit 1
fi
restore="$(ls -td1 *"$1" | sed -n "${desired}p")"
if [ -e "$dest/$1" ];then
	echo "\"$1\"already exists in this directory. Cannot overwite." >&2
	exit 1
fi
/bin/echo -n "Restoring file \"$1\"..."
$move "$restore" "$dest/$1"
echo "done."
/bin/echo -n "Delete the additional copies of this file? [y] "
read answer
if [ ${answer:=y} = "y" ] ;then
	$realrm -rf *"$1"
	echo "Deleted."
else
	echo "Additional copis retained."
fi
else
if [ -e "$dest/$1" ];then
	echo "\"$1\"already  exists in this directory. Cannot overwrite." >&2
	exit 1
fi
restore="$(ls -d *"$1")"
/bin/echo -n "Restoring file \"$1\"..."
$move "$restore" "$dest/$1"
echo "Done."
fi
exit 0
