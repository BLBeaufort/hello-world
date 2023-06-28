# script: Ops Challenge: Class 09
# Author:  Barbara L. Beaufort
# Date of latest revision: 6/28/2023
# Purpose:  Solution to FizzBuzz Game
#Main

# You are going to write a program that automatically prints the solution to the FizzBuzz game.
# Your program should print each number from 1 to 100 in turn.
# When the number is divisible by 3 then instead of printing the number it should print "Fizz".
# When the number is divisible by 5, then instead of printing the number it should print "Buzz".`
#   And if the number is divisible by both 3 and 5 e.g. 15 then instead of the number it should print "FizzBuzz"
# You will need to use a for loop to write this:
#Write your code below this row :point_down:

for num in range (1,101):
    print (num)
    if num % 3 == 0:
        print ("Fizz")
    elif num % 5 == 0:
        print ("Buzz")
    elif num %3 and 5 :
        print ("FizzBuzz")
