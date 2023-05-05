# script: Ops Challenge: Class 07
# Author:  Barbara L. Beaufort
# Date of latest revision: 5/4/2023
# Purpose:  Write a script to display System Information

#!/bin/bash

echo “System Information”

echo “CPU”
 lshw -c cpu | grep -i “Product”
 lshw -c cpu | grep -i “Vendor”
 lshw -c cpu | grep -i “Physical ID”
 lshw -c cpu | grep -i “Bus information”
 lshw -c cpu | grep -i “Width”

echo “RAM”
 lshw -c memory | grep -i “Description”
 lshw -c memory | grep -i “Physical ID”
 lshw -c memory | grep -i “Size”

echo “Display Adapter”
 lshw -c display | grep -i “Description”
 lshw -c display | grep -i “Product”
 lshw -c display | grep -i “Vendor”
 lshw -c display | grep -i “Physical ID”
 lshw -c display | grep -i “Bus Info”
 lshw -c display | grep -i “Width”
 lshw -c display | grep -i “Clock”
 lshw -c display | grep -i “Capabilities”
 lshw -c display | grep -i “Configuration”
 lshw -c display | grep -i “Resources”

echo “Network Adapter”
 lshw -c network | grep -i “Description”
 lshw -c network | grep -i “Product”
 lshw -c network | grep -i “Vendor”
 lshw -c network | grep -i “Physical ID”
 lshw -c network | grep -i "Bus Info"
 lshw -c network | grep -i "Logical Name"
 lshw -c network | grep -i "Version"
 lshw -c network | grep -i "Serial"
 lshw -c network | grep -i "Size"
 lshw -c network | grep -i "Capacity"
 lshw -c network | grep -i "Width"
 lshw -c network | grep -i "Clock"
 lshw -c network | grep -i "Capabilities"
 lshw -c network | grep -i "Configuration"
 lshw -c network | grep -i "Resources"
 