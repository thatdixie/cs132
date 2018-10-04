#!/bin/bash
# This demo program advances the previous one by introducing 
# (1) the bash for-loop 
# (2) backquoted strings as a means of using the output of commands
# (3) the -s test, which is another file test.
# Written by Stewart Weiss

if test $# -eq 0
then
    # The number of command line arguments is zero
    echo "You must supply at least one directory argument"
    exit
else
    # There is at least one argument. The next line is the start of a for-loop
    # that repeats the same sequence of commands for each argument on the command
    # line.
    for arg in $*
    do
        if test -d $arg
        then
            # Check if this argument is a directory
            echo "Displaying the files in directory $arg:"
            for file in `ls $arg`
            do
                if test -s $arg/$file 
                then
                    echo "$file is not empty"
                else
                    echo "$file is  empty"
                fi
            done
        else
            echo "$arg is not a directory!"
        fi
    done
fi
    
