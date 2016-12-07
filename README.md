# Combine-Samples

       combine-names.sh
       written by Connor Burbridge

       This script has been written to assist in the steps of a GBS pipeline
       written by Carolyn Caron and may not meet expectations for others!

       For use when samples in a GBS analysis need to be concatenated prior
       calling SNPs. This script will take .sam files and use the cat command
       to combine them. The script searches for the sample names from a file
       that is supplied through standard input! NOT FROM THE COMMAND LINE. The
       sample names must be truncated version of the old sample name.
       i.e. LR-70-83-ATGCCT + LR-70-83-CGCGGAGA ----> LR-70-83

       ex command: sh combine-samples.sh LR70 < samples.txt

       In order to run this script you must be in the directory that contains
       the .sam files.

       There are two arguments for the script:

       $pop --> the population name used for the GBS.conf file - i.e. LR70
       $path --> full or relative path to the output directory - i.e. ../new-align
