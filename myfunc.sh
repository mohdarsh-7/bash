function add(){
	echo $[ $1+$2 ]
}
function mux(){
	echo $[ $1 * $2 ]
}
function div(){
	if [ $2 -ne 0 ]
	then
		echo $[ $1/$2 ]
	else
		echo -1
	fi
}
