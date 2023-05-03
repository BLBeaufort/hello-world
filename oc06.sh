# script: Ops Challenge: Class 06
# Author:  Barbara L. Beaufort
# Date of latest revision: 5/3/2023
# Purpose:  Create a loop/conditional statements

#! /bin/bash

directories-("dir5 "dir6" "dir7")

for directory in "$[directories[@]}"; do

if [!-b "$directories"]; then
mkdir "$directory"

else
echo "directory exists"
fi
done

