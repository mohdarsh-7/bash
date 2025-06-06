#!/bin/bash
MAXDISKUSAGE=2000 #MB
for name in $(cut -d: -f1,3 /etc/passwd|awk -F: '$2> 99{print$1}')
do
	/bin/echo -n "user $name exceeds disk quota . Disk usage is: "
	find / /usr /var -xdev -user $name -type f -ls | awk '{sum+= $7} END { print sum/(1024*1024) "MB" }' 
done | awk " \$9 > $MAXDISKUSAGE { print \$0} "
exit 0
