#!/bin/bash
# A sed script that changes every first occurrence of the word "the" in each line
# to uppercase, i.e. "THE". Its only purpose is to illustrate the
# substitution operator in sed.
# Written by Stewart Weiss, September 3, 2018

# THIS MODIFIES THE ORIGINAL FILE. MAKE A COPY BEFORE USING!!!

# Make sure that there is a single command line argument
if [ $# -lt 1 ] ; then
    echo "usage: $0 filename"
    exit
fi

# For now we do not check whether the name supplied is a file we can open and
# read. Such error checking will come later.

# Run the 's' command, replacing every occurrence of ' the ' by ' THE '.
# This is a way to prevent sed from changing strings like 'there' to 'THEre'.

sed -i 's/ the / THE /' $1
