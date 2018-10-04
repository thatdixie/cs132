#!/bin/bash
# A simple bash script that expects a single command line argument
# which must be a positive integer. This script will not behave well
# if the argument is not a positive integer. 
# Written by Stewart Weiss as an intro to while-loops.

if test $# -lt 1
then
    echo "usage: $0 <positive_integer>"
    exit
fi

let number=$1
while test $number -gt 0
do
    echo -n " ."
    let number=$number-1
done
echo 
