#! /bin/bash

input of the fasta file=`cat $1`

# this command looks for all the headers within the fasta file for investigation
sequence=`grep -v ">" $1`

#this counts the total number of ATCG in the headers of the file
total=`echo -n $sequence | wc -c` 

# this commands echos the amount of GC per header in the file
gc=`echo $sequence | grep -o '[C G]' | wc -l`

# this command takes the number of GC and divides the total number of sequences
percent=`echo "($gc / $total) * 100 " | bc -l`

#this command prints out the combined percent of GC for all the headers
echo $percent
