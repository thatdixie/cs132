#!/bin/bash

if [ $# -lt 3 ]
then
    echo "usage: $0 firstline secondline filename"
    exit
fi
first=$1
second=$2
let n=second-first+1
head -$2 $3 | tail -$n 
