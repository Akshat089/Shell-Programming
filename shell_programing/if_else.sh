#!/bin/bash

# Define the variable (No spaces around =)
age=39

# Start the logic
# IMPORTANT: Note the spaces after '[' and before ']'
if [ $age -lt 30 ]; then
    echo "You are still under 30"

# -a stands for "AND" (both conditions must be true)
elif [ $age -ge 30 -a $age -le 40 ]; then
    echo "You are in your 30s"

else
    echo "You are 40 or over"

# Every 'if' block must end with 'fi'
fi
