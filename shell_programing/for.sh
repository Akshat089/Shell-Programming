#!/bin/bash

# Initialize a counter variable to track loop iterations
count=0

# The syntax follows: for var in list_of_items
# Here, 'i' is the variable, and '2 4 6' is the list of items.
for i in 2 4 6
do
    # This statement executes for every item (word) in the list.
    # We use $i to access the current value in the sequence.
    echo "i is $i"

    # Increment the 'count' variable by 1 for each iteration.
    # Note the use of backticks `` and expr for calculation.
    count=`expr $count + 1`
done

# This statement runs after the loop has finished iterating through the list.
echo "The loop was executed $count times"
