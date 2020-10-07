#!/bin/bash
#
# this script rolls a pair of six-sided dice and displays both the rolls
#

# Task 1:
#  put the number of sides in a variable which is used as the range for the random number
#  put the bias, or minimum value for the generated number in another variable
#  roll the dice using the variables for the range and bias i.e. RANDOM % range + bias

# Task 2:
#  generate the sum of the dice
#  generate the average of the dice

#  display a summary of what was rolled, and what the results of your arithmetic were

# Tell the user we have started processing
echo "Rolling..."
# roll the dice and save the results
declare -i sides=6
declare -i minVal=1
die1=$(( RANDOM % sides + minVal))
die2=$(( RANDOM % sides + minVal ))
declare -i sum=die1+die2
declare -i avg=sum/2


# display the results
echo "Rolled $die1, $die2"
echo "Sum of rolls " $sum
echo "Average of rolls " $avg
