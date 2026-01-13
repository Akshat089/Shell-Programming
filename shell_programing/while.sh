#!/bin/bash

# Initialize a variable 'a' with the value 0
a=0

# The syntax follows: while [ condition ]
# We use the -lt (less than) comparator from your table.
# The loop will continue as long as 'a' is less than 10.

echo "Starting the loop..."

while [ $a -lt 10 ]
do
    # Print the current value of 'a'
    echo "Current value of a: $a"

    # Increment the variable 'a' by 1. 
    # Note: `expr` is used for mathematical evaluations.
    # You can also use: a=$((a + 1))
    a=`expr $a + 1`

done

echo "Loop finished because 'a' reached 10."
