# GC Content Calculator
**This is a shell command program that was run in bash.**
#! /bin/bash
**The fasta file was called using the following variable for the program**
input of the fasta file=`cat $1`
**To find all of the headers for the different sampled DNA sequences of the fasta file, the following command was used to capture them**
sequence=`grep -v ">" $1`
**The total length of each of the DNA sequences for each header was counted and added together to produce a grand total of bases in the file**
total=`echo -n $sequence | wc -c` 
**The total number of G's and C's for each sequence was then calculated and added together for the grand total of GC for the entire file**
gc=`echo $sequence | grep -o '[C G]' | wc -l`
**The total percent of GC for the entire file was calculated and then printed after echoing the variable percent**
percent=`echo "($gc / $total) * 100 " | bc -l
echo $percent
