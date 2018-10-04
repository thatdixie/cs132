#!/bin/bash
# To demonstrate how to read from the standard input using the read bash builtin
# The ideas shown here can be used for gathering data to fill out forms,
# for example. 
# Written by Stewart Weiss

# The read command reads what the user types on standard input.
# It reads each word on the line into a separate variable. If there are
# more words than variables, the extras are put in the last variable.
# If there are too few words, then the remaining variables have empty strings.
# The -p option followed by a quoted string uses that string as a prompt.

read -p "Please enter your first name: " first_name
read -p "Now enter your last name: "     last_name

# To substitute the value of a variable into a string, put a $ in front of
# the variable's name:
echo "So you are $first_name $last_name and your user name is $LOGNAME."
# echo "Do you want to know what else I know? "
read -p "Do you want to know what else I know? " answer rest_of_line
if [ $answer == "yes" ] 
then
    echo "Your home directory is $HOME"
    echo -n "We are using terminal " `tty`
    echo " and it has $COLUMNS columns and $LINES rows."
else
    echo "Good bye."
    exit
fi  

    
