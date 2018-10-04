#!/bin/bash
# usage:   mysed line1 line2 file
#
# will display lines from line1 through line2 in file on standard output
# If line1 >= line2 it will display line1 alone
if [ $# -lt 3 ]
then
    echo "usage: $0 num1 num2 file"
    echo "    where num1 <= num2"
    exit
fi

sed -n $1,$2p $3
