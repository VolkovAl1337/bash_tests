#!/bin/bash
text=$1
echo $text
line_num=1
if [ $text ]
then
	for line in $(cat $text)
	do
		if [ $line_num -lt 10 ]
		then
			line_num=$(($line_num+1))
			continue
		fi
		echo $line
		break
	done
else
	echo "No file entered"
fi
