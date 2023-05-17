# script: Ops Challenge: Class 13
# Author: Barbara L. Beaufort
# Date of latest revision: 5/17/2023
# Purpose: Domain Analyzer

sudo apt-get install whois
sudo apt-get install dnsutils


#!/bin/bash

$whois firefox.com

$dig firefox.com

$sudo host "$firefox.com"

$nslookup -type=ns firefox.com

$cat > 'C: \Users\barba\Documents\Domain Analyzer.txt'
