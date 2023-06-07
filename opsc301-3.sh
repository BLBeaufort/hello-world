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
until "$input"=no
do 

    echo "Enter name of file to change permissions"
    read filename
    read -p "Please Enter Permissions Number:" -r r1
    chmod 777 $filename
    echo "$filename permissions has been changed:
    echo "Would you like to change the permissions of another file? (yes or no)"
    read $input
    echo "You typed: $input

    #Navigates to the directory input by the user and changes all files inside it to the input setting
    read -p "Input this: " this
    read -p "Input that: " that
    sudo add-apt-repository ppa:${this}/${that} 

    #Prints to the screen the directory contents and the new permissions settings of everything in the directory
    [ -w $file ] && W="Write = yes" || W="Write = No"
    [ -x $file ] && X="Execute = yes" || X="Execute = No"
    [ -r $file ] && R="Read = yes" || R="Read = No"

    echo "$file permissions"
    echo "$w"
    echo "$R"
    echo "$X"
    end 