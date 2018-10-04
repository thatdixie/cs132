#!/bin/bash

if test $# -ne 2
then
    echo "usage: $0 num1 num2 where num1 < num2"
    exit
fi

if test $1 -gt $2
then
   echo " num1 must be less than or equal to num2"
   exit
fi

let sum=0
let sumsquare=0
for number in `seq $1 $2`
do
    let square=$number*$number
    let sum=$sum+$number
    let sumsquare=$square+$sumsquare

done
echo The sum of the numbers is $sum and the sum of their squares in $sumsquare.
