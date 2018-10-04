#!/bin/bash
# A simple demonstration of the if-statement.
# It does not do much error-checking though. 
# usage: if_demo1.sh  [optional directory name]
# If no directory is supplied it shows current working dir
# Otherwise it tries to list given directory name
# Written by Stewart Weiss

if test $# -eq 0
then
    echo "This is my directory:"
    ls .
else
    ls $1
fi
    
