#!/bin/bash
#for ((i=0;i<10;i++))
#do
#	for((j=0;j<10;j++))
#	do
#		if [ $i -eq 5 ]
#		then
#			break
#		fi
#		echo " $i  $j"
#	done
#done
#!/bin/bash
for ((i=0;i<5;i++))
do
       for((j=0;j<5;j++))
       do
               if [ $j -eq 2 ]
               then 
                       continue 2
               fi
               echo " $i  $j"
       done
done
