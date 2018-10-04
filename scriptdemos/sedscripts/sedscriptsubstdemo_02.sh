#!/bin/bash
# Version 2 of the sed script 
# A sed script that changes all occurrences of the word "the" in each line
# to uppercase, i.e. "THE". Its only purpose is to illustrate the
# substitution operator in sed.
# This differs from the first version because it uses the "global" flag
# in the sed command, s/word/replacement/g

# THIS MODIFIES THE ORIGINAL FILE. MAKE A COPY BEFORE USING!!!

# Written by Stewart Weiss, September 3, 2018

# Make sure that there is a single command line argument
if [ $# -lt 1 ] ; then
    echo "usage: $0 filename"
    exit
fi

# For now we do not check whether the name supplied is a file we can open and
# read. Such error checking will come later.

# Run the 's' command, replacing every occurrence of ' the ' by ' THE '.
# This is a way to prevent sed from changing strings like 'there' to 'THEre'.

sed -i 's/ the / THE /g' $1
