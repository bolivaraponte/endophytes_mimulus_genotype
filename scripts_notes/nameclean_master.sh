#!/bin/bash
# Comment out as needed.
# Version 1
for i in *.fq
do
 newname=$(echo $i | cut -d_ -f1-3).fq
 mv $i  $newname
done


# Version 2
for i in *R1_001.fastq
do
 newname=$(echo $i | cut -d_ -f1,2)_R1.fastq
 echo $i $newname
done

for i in *R2_001.fastq
do
 newname=$(echo $i | cut -d_ -f1,2)_R2.fastq
 echo $i $newname
done


# Version 3
for i in *F_filt.fastq
do
 newname=$(echo $i | cut -d_ -f1,2)_R1.fastq
 echo $i $newname
 mv $i $newname
done

for i in *R_filt.fastq
do
 newname=$(echo $i | cut -d_ -f1,2)_R2.fastq
 echo $i $newname
 mv $i $newname
done

##Script from HPC workshop 2 3/16/2023
##Updated on 6/7/2023 with troubleshooting with ChatGPT. 
#Various itterations offered were not exactly what I needed.-BAR
