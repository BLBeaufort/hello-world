#!/bin/sh
#Script Name-opsc02.sh
#Author-Barbara L. Beaufort
#Date of Last Revision-31 May 2023
#Description of Purpose-Copy system log files to the PWD and appends current date and time.
#Main

cp -v /var/log/syslog "$PWD/syslog-$(date +"%Y-%m-%d-%H:%M:%S")"

#End