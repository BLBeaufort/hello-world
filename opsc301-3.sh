#!/bin/bash
#Script Name: opsc301-3.sh
#Author: Barbara L. Beaufort
#Date of Last Revision: 07 June 2023
#Description of Purpose: Changing permissions in system files/directories

#Get a list of files in directory
files=$(ls ${dir})

#Prompt user for input of directory path
read -p "Please Enter Path:" -r r1
parent=$(dirname "$r1")
cd "$parent

#Prompt user for input of permissions number
    echo "Enter name of File"
    ls
    read file
    echo "Enter Permissions"
    read number
    $777="chmod777"
    read my_var
    ls -l $file 
    echo "Welcome User"
    ls -l $file
    
