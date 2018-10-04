#!/bin/bash
# Version 3 of the sed script 
# This script is used as follows:
#   sedscript_demo03.sh  word1 word2  filename
# where word1 is the word to be replaced everywhere
#       word2 is the word that replaces word1, and
#       filename is the file in which the replacements should take place.


# THIS MODIFIES THE ORIGINAL FILE. MAKE A COPY BEFORE USING!!!

# Written by Stewart Weiss, September 3, 2018

# Make sure that there is a single command line argument
if [ $# -lt 3 ] ; then
    echo "usage: $0 word1 word2 filename"
    echo "       where word1 is the word to be replaced everywhere"
    echo "       word2 is the word that replaces word1, and"
    echo "       filename is the file in which the replacements should take place."
    exit
fi

# For now we do not check whether the name supplied is a file we can open and
# read. Such error checking will come later.

# Run the 's' command, replacing every occurrence of ' the ' by ' THE '.
# This is a way to prevent sed from changing strings like 'there' to 'THEre'.

sed -i s/$1/$2/g $3
