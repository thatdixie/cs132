#!/bin/bash
# To demonstrate how to read from the standard input
# and use a loop.
# Written by Stewart Weiss

echo "Try to guess my favorite color:"
read guess rest_of_line
mycolor=`cat secretfile`
let counter=1

while [ $guess != $mycolor ] 
do
    if [ $counter -eq 5 ] ; then
        echo "You ran out of tries. Goodbye"
        exit
    fi
    echo "Sorry, that is not my favorite color. Try again. "
    read guess rest_of_line
    let counter=$counter+1
done
echo "Congratulations, you guessed it!!!!"    
