#!/bin/bash
log_file="system.log"
log_dir="/home/akshatbetalol/demo1"
app_file="app.log"

echo "Action: Parent is calling Child WITHOUT export..."
./child.sh

echo -e "\n-----------------------------\n"


