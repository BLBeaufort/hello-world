# script: Ops Challenge: Class 06
# Author:  Barbara L. Beaufort
# Date of latest revision: 5/3/2023
# Purpose:  Create a loop/conditional statements

#!/bin/bash
directories=("dir1" "dir2" "dir3")
for directory in "${directories[@]}"; do
  if [ ! -d "$directory" ]; then
        mkdir "$directory"
     else
    echo "directory already exists"
  fi
done