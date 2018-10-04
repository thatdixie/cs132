#!/bin/bash
# A super simple awk script
# This just prints the last word on every line of a given file.

if test $# -lt 1 
then 
    echo "usage: $0 file"
    exit
fi

awk  '{print $NF }' $1
