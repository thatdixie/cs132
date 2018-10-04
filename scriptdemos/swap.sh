#!/bin/bash
# This script shows how to use the if-statement to test whether or not
# the user supplied two commandline arguments
# usage:  swap.sh  word  word
# Written by Stewart Weiss, Sept 22, 2014

if  test $# -ne 2        # tests whether number of args == 2
then
    echo "usage: swap word1 word2"
    exit
fi

# if the script reaches here, there are two words. They are stored in
# variables $1 and $2. They are now printed in reverse order
echo $2 $1
