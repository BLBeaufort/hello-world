# script: Ops Challenge: Class 12
# Author:  Barbara L. Beaufort
# Date of latest revision: 7/17/2023
# Purpose:  Python Script for Adventure Game
#Main

# Your challenge tonight is to write a basic adventure game using some of the  
# code provided below and using if/elif statments

yes_no = ["yes", "no"]
directions = ["left", "right", "forward", "backward"]
 
# Introduction
name = input("What is your name, adventurer?\n")
print("Greetings, " + name + ". Let us go on a quest!")
print("You find yourself on the edge of a dark forest.")
print("Can you find your way through?\n")
 
# Start of game
response = ""
while response not in yes_no:
    response = input("Would you like to step into the forest?\nyes/no\n")
    
 
# Next part of game

response = ""
while response not in directions:
    response = input("Which direction would you like to go?\nleft/right/forward/backward\n")
    if response == "left":
        print("You move left and reach a dark cave with lions.  You have been eaten!.\n")
    elif response == "right":
        print("You move right and you reach the edge of a deep river bank.  BE CAREFUL!")
    elif response == "forward":
        print("You move forward and get caught in a booby trap.  You are just hanging out!")
    elif response == "backward":
        print("You made it out. Congratulations! " + name + ".")
    else:
        print("I didn't understand that.\n")
    
    
