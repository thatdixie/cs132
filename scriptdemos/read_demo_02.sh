#!/bin/bash
# To demonstrate how to read from the standard input
# and use a loop, as well as how to do arithmetic in the bash shell
# Written by Stewart Weiss, Sept. 16, 2014

# Modified on Sept 21 by including error handling

echo "I can add numbers. Do you want to see? "
echo "Please confirm by typing 'yes' or 'no':"
read answer restofline

if [ $answer != "yes" ] 
then
    echo "OK, bye."
    exit
fi  

echo "When you are ready to start, press the ENTER key."
read anything

# The -z test is true if the string that follows has zero length
while [ -z $anything ] 
do
    echo -n "Enter 2 numbers: "
    read first second rest_of_line
    # The following line checks if either the first number is missing
    # or the second number is missing. The -o means "or". Combined with
    # -z meaning check if string is zero length, it means if the first
    # number was not entered (so none were entered) or the first was but
    # not the second, then echo the error message, otherwise perform
    # the sum. It is necessary to put $first and $second in double quotes!
    if [  -z "$first"  -o  -z "$second" ] 
    then
        echo "You did not enter two numbers."
    else
        # The let command is followed by a variable then = then an arithmetic
        # expression, with NO spaces between any of them.
        let result=$first+$second 
        echo "Their sum is $result"
    fi
    echo -n "Press ENTER to continue, or 'q' to quit:"
    read anything rest_of_line
done





    
