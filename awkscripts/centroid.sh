#!/bin/bash
# This is a shell script that calls the awk program to 
# process a file whose lines are of the form
#   x-coordinate   y-coordinate z-coordinate
#
# Each line is supposed to represent the position of a particle
# such as an atom. The output is the centroid of this system - 
# the point at which it would balance if each particle had the same
# mass.

if [ $# -lt 1 ]
then
    echo "Call this with the name of a file as in"
    echo "    $0 coordinate-file-name"
    exit
fi

awk '
    BEGIN { 
        x_sum = 0; 
        y_sum = 0; 
        z_sum = 0;
    }
    {x_sum += $1 ; y_sum += $2; z_sum += $3 } 
    END { 
        printf "%8.3f %8.3f %8.3f\n", x_sum/NR, y_sum/NR, z_sum/NR 
}' $1
