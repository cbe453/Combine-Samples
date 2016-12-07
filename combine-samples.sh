#!/bin/sh

echo "Combining samples"

while read line
do
	echo $line
	filestocat=`ls 2>miss.txt | grep "$line-" 2> miss.txt | grep 'besthits.sam'`
	
	echo $filestocat

	echo cat $filestocat to ../new-align/$line\_besthits.sam

	if test #? = 0
	then 
		echo "successful concatenation of $line"
	fi 
done
