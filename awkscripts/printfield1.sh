#!/bin/bash
#   -- 
# 
# Usage                : print1.sh <filename>
#            
# Written by           : Stewart Weiss 
# Created on           : September 27, 2018             
# Description          : A super simple awk script
#                        This prints the first word on every line of given file.
#              
#
#*******************************************************************************             

if test $# -lt 1 
then 
    echo "usage: $0 file"
    exit
fi

awk  {print $1 } $1
