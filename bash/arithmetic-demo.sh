#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label
echo "Please give First number"
read firstnum
echo "Please give second number"
read secondnum
echo "Please give third number"
read thirdnum
sum=$((firstnum + secondnum +thirdnum))
product=$((firstnum*secondnum*thirdnum))


cat <<EOF
$firstnum plus $secondnum plus $thirdnum is $sum
$firstnum multiplies $secondnum multiplies $thirdnum is $product
  - More precisely, total sum is $sum and product is $product
EOF
