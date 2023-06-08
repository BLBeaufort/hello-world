#!/bin/bash
#Script Name: opsc301-3.sh
#Author: Barbara L. Beaufort
#Date of Last Revision: 07 June 2023
#Description of Purpose: Changing permissions in system files/directories

#Main
    echo "Enter a File"
    ls
    read file
    echo "Enter Permissions"
    read number
    chmod $number $file
    ls -l $file
    
