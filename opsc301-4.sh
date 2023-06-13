#!/bin/bash
#Script Name: opsc301-4.sh
#Author: Barbara L. Beaufort
#Date of Last Revision: 13 June 2023
#Description of Purpose: Conditionals in Menu Systems
#Main

x=z
while [ $x = z ]
do 
echo "Please Choose:"
echo "1 Hello World!"
echo "2 Ping self"
echo "3 IP Info"
echo "4 Exit"

read a
if [ $a = 1 ]
    then echo "Hello World!"
elif [ $a = 2 ]
    then ping -c 3 localhost
elif [ $a = 3 ]
    then ifconfig
else [$a = 4 ]
    exit
fi
echo "Do you want to try again? Y or N"
read x
done

