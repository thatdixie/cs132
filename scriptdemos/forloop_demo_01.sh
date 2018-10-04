#!/bin/bash
# A simple example showing how the for loop works
# This expects zero or more words after the command
# and prints the words on separate lines preceded by their
# ordinal position on the line.
# Depends on knowledge of if-statement.
#
# Written by Stewart Weiss

# check whether there is at least one command-line argument 
if test $# -gt 0   
then
    # there is at least one argument
    echo "Words on the line are:"
    let count=1            # set variable count to have initial value 1
    for word               # for each word on command line, 
    do
        echo $count: $word # display value of count then the word
        let count=$count+1 # add 1 to count
    done
fi
