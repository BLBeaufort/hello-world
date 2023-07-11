# script: Ops Challenge: Class 10
# Author:  Barbara L. Beaufort
# Date of latest revision: 7/10/2023
# Purpose:  Python Script for selection of HTTP
#Main

# Create a Python script that performs the following:
# Prompt the user to type a string input as the variable for your destination URL.
# Prompt the user to select a HTTP Method of the following options:
# GET
# POST
# PUT
# DELETE
# HEAD
# PATCH
# OPTIONS
# Print to the screen the entire request your script is about to send. Ask the user to confirm before proceeding.
# Using the requests library, perform a GET request against your lab web server.
# For the given header, translate the codes into plain terms that print to the screen; for example, a 404 error should print Site not found to the terminal instead of 404.
# For the given URL, print response header information to the screen.

import requests

url = input("Enter the destination URL:")

http_method = input("Select an HTTP method (GET, POST, PUT, DELETE, HEAD, PATCH, OPTIONS):")

print(f"Sending {http_method} request to: {url}")
confirmation = input("Confirm to proceed (Y/N:)")

if confirmation.upper() == "Y":
   response = requests.request(http_method,url)

print (response)

status_codes = {
    200: "Valid",
    404: "Not Found",
    
    }

if response.status_code == 200:
   print('Valid')
elif response.status_code == 404:
     print("Not Found.")
    







