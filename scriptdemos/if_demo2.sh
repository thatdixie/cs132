#!/bin/bash
# This demonstrates the use of the test command with two types of tests,
# the number of arguments operator and the file test, -d
# The -d test checks whether the argument is a directory that exists.
# Written by Stewart Weiss

if test $# -lt 1
then
    echo "Displaying the working directory by default:"
    ls -lt .
else
    if test -d $1
    then
        echo "Displaying the files in directory $1:"
        ls -lt $1
    else
        echo "$1 is not a directory!"
    fi
fi
echo "We are finished!" 
