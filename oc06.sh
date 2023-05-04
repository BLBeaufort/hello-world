# script: Ops Challenge: Class 06
# Author:  Barbara L. Beaufort
# Date of latest revision: 5/3/2023
# Purpose:  Create a loop/conditional statements

#!/bin/bash
directories=("dir1" "dir2" "dir3")
for directory in "${directories[@]}"; do
#Start if statement, ! -d is checking the condition to see if directory exzists.  If it does not, it will create a directory.
if [!-f "$directories"]; then
mkdir "$directory"
#If directory does not exist, print to terminal "directory already exists"
else
echo "directory exists"
fi
done