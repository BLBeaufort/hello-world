#!/bin/bash
#Script Name: ops301-2.sh
#Author: Barbara L. Beaufort
#Date of Last Revision: 31 May 2023
#Description of Purpose: Copy system log files to the PWD and appends current date and time.
#Main

cp -v /var/log/syslog "$PWD/syslog-$(date +"%Y-%m-%d-%H:%M:%S")"

#End

now=$(date)
filename=syslog_$now


echo "Creating system log in working directory"
cp /var/log/syslog~/Desktop/Ops-Challenge-Class-04/bash

echo "Displaying timestamp in filename below"
echo $filename
