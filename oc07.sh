# script: Ops Challenge: Class 07
# Author:  Barbara L. Beaufort
# Date of latest revision: 5/4/2023
# Purpose:  Write a script to display System Information

#!/bin/bash

#!bin/bash/

echo “Computer Name”

echo “CPU”
lshw -c cpu | grep -i Product
lshw -c cpu | grep -i Vendor
lshw -c cpu | grep -i Physical ID
lshw -c cpu | grep -i Bus information
lshw -c cpu | grep -i Width

echo “RAM”
lshw -c ram | grep -i Description
lshw -c ram | grep -i Physical ID
lshw -c ram | grep -i Size

echo “Display Adapter”
lshw -c display| grep -i Description
lshw -c display | grep -i Product
lshw -c display| grep -i Vendor
lshw -c display | grep -i Physical ID
lshw -c display | grep -i Bus info
lshw -c display | grep -i Width
lshw -c display | grep -i Clock
lshw -c display | grep -i Capabilities
lshw -c display | grep -i Configuration
lshw -c display | grep -i Resources

echo “Network Adapter”
lshw -c display| grep -i Description
lshw -c display | grep -i Product
lshw -c display| grep -i Vendor
lshw -c display | grep -i Physical ID
lshw -c display | grep -i Bus info
lshw -c display | grep -i Logical name
lshw -c display | grep -i Version
lshw -c display | grep -i Serial
lshw -c display | grep -i Size
lshw -c display | grep -i Capacity
lshw -c display | grep -i Width
lshw -c display | grep -i Clock
lshw -c display | grep -i Capabilities
lshw -c display | grep -i Configuration
lshw -c display | grep -i Resources
