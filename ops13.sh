# script: Ops Challenge: Class 13
# Author: Barbara L. Beaufort
# Date of latest revision: 5/17/2023
# Purpose: Domain Analyzer

sudo apt-get install whois
sudo apt-get install dnsutils


#!/bin/bash

echo "Enter a website"

read firefox.com

whois $firefox.com >> whois.txt

dig $firefox.com >> whois.txt

host $firefox.com >> whois.txt

nslookup >> whois.txt

