#!/bin/bash
# A script to show how to use backquotes to run a command and 
# replace itself with the output of that command.
# Assumes knowledge of the for-loop and the if-statement.
#
# Written by Stewart Weiss

for name  in $*
do
    if [ 0 -lt ` who | grep -c $name` ]
    then
        echo $name is logged in.
    else
        echo $name is not logged in.
    fi
done
