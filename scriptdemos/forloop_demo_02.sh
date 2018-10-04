#!/bin/bash
# A script that adds the absolute values of its numeric arguments
# provided on the command line.
# This uses a for-loop to set number to each argument and an if-statement
# within the loop to check whether the number is positive or not.
# Positive numbers are added to sum, which is initialized to 0, whereas
# zero or negative numbers are subtracted, meaning their absolute values
# are added to sum.
# This demo shows how to use an if-then-else nested in a loop.
# Written by Stewart Weiss

# Initialize sum to 0
let sum=0

# Check that there is at least one number
if test 0 -eq $#
then
    echo "usage: $0 <list-of-numbers>"
    exit
fi

for number in $*      # can write this as for number
do
    # Check if 0 < number
    if test 0 -lt  $number 
    then
        let sum=$sum+$number
    else
        let sum=$sum-$number
    fi
done
# Output value of sum
echo $sum
