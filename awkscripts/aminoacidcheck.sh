#!/bin/bash
#   -- 
# 
# Usage                : aminoacidcheck.sh <three-letter-name> <filename>
#            
# Written by           : Stewart Weiss 
# Created on           : September 27, 2018
              
# Description          :    
#              
#
#*******************************************************************************             
if [ $# -ne 2 ] ; then
   echo  usage: $0 three-letter-name  filename
   exit
fi

if [ ! -e $2 ] ; then
   echo "Cannot open $2"
   exit
fi

awk -F: '  $1 ~ /'$1'/  {print $2} ' $2

