#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############

USER="Bhangu"
hostname="Scripting"
time="$(date +'%r')"
weekday="$(date +'%A')"

if [ $weekday == 'Monday' ]
then
  title="Great"
fi

if [ $weekday == 'Tuesday' ]
then
  title="Excellent"
fi

if [ $weekday == 'Wednesday' ]
then
  title="Realistic"
fi

if [ $weekday == 'Thursday' ]
then
  title="Optimistic"
fi

if [ $weekday == 'Friday' ]
then
  title="Enthusiastic"
fi

if [ $weekday == 'Saturday' ]
then
  title="Marvellous"
fi

if [ $weekday == 'Sunday' ]
then
  title="Brave"
fi

###############
# Main        #
###############
cat <<EOF


Welcome to Planet $hostname, "$title $USER!"
It is $weekday at $time

EOF
