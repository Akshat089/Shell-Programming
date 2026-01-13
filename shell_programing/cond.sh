#!/bin/bash

# 1. Assign the first argument to a variable. 
# We use quotes and braces to prevent empty variable errors.
FILENAME="${1}"

# 2. Check if the user provided ANY argument ($# is the count)
if [ $# -eq 0 ]; then
    echo "Error: No filename provided."
    echo "Usage: $0 <filename>"
    exit 1

# 3. Check if the file DOES NOT exist
# The '!' means NOT. '-f' checks if it is a regular file.
elif [ ! -f "$FILENAME" ]; then
    echo "Error: File '$FILENAME' not found in this directory."
    exit 1

# 4. If the file exists, analyze the content
else
    echo "Analyzing $FILENAME..."
    
    # Get the number of ERROR lines
    # $(...) captures the output of the command into a variable.
    ERR_COUNT=$(grep -c "ERROR" "$FILENAME")

    # 5. Severity Logic using if-elif-else
    if [ "$ERR_COUNT" -eq 0 ]; then
        echo "Status: CLEAN. No errors found."
    elif [ "$ERR_COUNT" -le 5 ]; then
        echo "Status: STABLE. Found $ERR_COUNT minor errors."
    elif [ "$ERR_COUNT" -le 10 ]; then
        echo "Status: WARNING. $ERR_COUNT errors detected. Check logs soon."
    else
        echo "Status: CRITICAL! $ERR_COUNT errors found. Immediate action required."
    fi
fi
