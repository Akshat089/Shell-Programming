#!/bin/bash

echo "--- Child Script Starting ---"
grep "ERROR" $log_file
grep -c "ERROR" $log_file
grep "Database" $log_file
grep "FATAL" $log_dir/$app_file
echo "--- Child Script Finished ---"
