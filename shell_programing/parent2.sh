#!/bin/bash
log_file="system.log"
log_dir="/home/akshatbetalol/demo1"
app_file="app.log"

echo "Action: Parent is now EXPORTING variables..."
export log_file
export log_dir
export app_file

echo "Action: Parent is calling Child WITH export..."
./child.sh
