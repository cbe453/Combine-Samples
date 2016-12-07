#!/bin/sh

echo "Combining samples"

while read line
do
	echo $line
	filestocat=`ls 2>miss.txt | grep "$line-" 2> miss.txt | grep 'besthits.sam'`
	
	echo $filestocat

	cat $filestocat > ../combined-align/$line\_LR70_besthits.sam

	if test #? = 0
	then 
		echo "successful concatenation of $line"
	fi 
done
