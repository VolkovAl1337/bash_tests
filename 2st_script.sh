#!/bin/bash
file="file.txt"
IFS=$'\n'
for number in $(grep '^([[:digit:]]\{3\}) [[:digit:]]\{3\}\-[[:digit:]]\{4\}\>\|^[[:digit:]]\{3\}\-[[:digit:]]\{3\}\-[[:digit:]]\{4\}\>' $file)
do
	echo $number
done
#\<[[:digit:]]\{3\}\-[[:digit:]]\{3\}\-[[:digit:]]\{4\}\>\|