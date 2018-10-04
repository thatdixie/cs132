#!/bin/bash
# This is a bash script that calls awk to print the headings of a CSV
# file, one heading per line.
# It assumes that the field separator is the comma.
# It expects a filename as its argument
# Written by Stewart Weiss

if [ $# -lt 1 ]
then
    echo "usage: $0 csv-filename"
    exit
fi

awk -F, ' 
{
  if (FNR==1) 
      for (i=1; i<=NF; i++) 
          printf "Field %d:\t%s\n",i,$i
}'  $1
