#!/bin/sh
#
#	combine-names.sh 
#	written by Connor Burbridge
#
#	For use when samples in a GBS analysis need to be concatenated prior
#	calling SNPs. This script will take .sam files and use the cat command
#	to combine them. The script searches for the sample names from a file
#	that is supplied through standard input! NOT FROM THE COMMAND LINE. The
#	sample names must be truncated version of the old sample name.
#	i.e. LR-70-83-ATGCCT + LR-70-83-CGCGGAGA ----> LR-70-83
#	
#	ex command: sh combine-samples.sh LR70 < samples.txt
#		
#	The only argument required is the name of the population you have
#	supplied in Caroyln's GBS.conf file.
#_______________________________________________________________________________
################################################################################

echo "Combining samples"

pop=$1

while read line
do
	#print the current sample and place samples from directory into array
	echo $line
	filestocat=`ls 2>miss.txt | grep "$line-" 2> miss.txt | grep 'besthits.sam'`
	
	#output for testing and to ensure proper functioning
	echo $filestocat
	
	#final command to concatenate sample names
	cat $filestocat > ../combined-align/$line\_$pop\_besthits.sam
done
