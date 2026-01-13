#!/bin/bash

# ---------------------------------------------------------
# 1. FUNCTION DEFINITION
# ---------------------------------------------------------
# Functions must be defined before they are called.
show_menu() {
    echo "--- System Menu ---"
    echo "1. Show current date"
    echo "2. List files in directory"
    echo "3. Exit"
    echo -n "Enter your choice: "
}

# ---------------------------------------------------------
# 2. MAIN LOGIC WITH WHILE LOOP AND CASE
# ---------------------------------------------------------
# We use a while loop to keep the program running
choice=0

while [ $choice -ne 3 ]  # -ne means "not equal to"
do
    # Call the function defined above
    show_menu
    
    # Read user input into the variable 'choice'
    read choice

    # 'case' is the Shell version of a switch statement
    case $choice in
        1)
            echo "Today is: `date`"
            ;; # ';;' acts like 'break' in other languages
        2)
            echo "Files in current folder:"
            ls
            ;;
        3)
            echo "Exiting program..."
            ;;
        *)
            # '*' acts as the 'default' case for any other input
            echo "Invalid option. Please try again."
            ;;
    esac
    
    echo "-------------------"
done
