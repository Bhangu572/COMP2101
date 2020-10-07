#!/bin/bash
#
# This script is for the bash lab on variables, dynamic data, and user input
# Download the script, do the tasks described in the comments
# Test your script, run it on the production server, screenshot that
# Send your script to your github repo, and submit the URL with screenshot on Blackboard

# Get the current hostname using the hostname command and save it in a variable
host="$(hostname)"

# Tell the user what the current hostname is in a human friendly way
echo 'Your current hostname is' $host

# Ask for the user's student number using the read command
echo "Please input your student number"
read stdNum

# Use that to save the desired hostname of pcNNNNNNNNNN in a variable, where NNNNNNNNN is the student number entered by the user
pcNNNNNNNNNN="pc$stdNum"

# If that hostname is not already in the /etc/hosts file, change the old hostname in that file to the new name using sed or something similar and
#     tell the user you did that
#e.g. sed -i "s/$oldname/$newname/" /etc/hosts
# If that hostname is not the current hostname, change it using the hostnamectl command and
#     tell the user you changed the current hostname and they should reboot to make sure the new name takes full effect
#e.g. hostnamectl set-hostname $newname

if [ -n "$(grep $pcNNNNNNNNNN /etc/hosts /etc/hostname)" ]
then
  echo "$pcNNNNNNNNNN is already in /etc/hosts";

else
        echo "$pcNNNNNNNNNN was not found in your /etc/hosts, making this your hostname...";
        sudo sed -i "s/$host/$pcNNNNNNNNNN/g" /etc/hosts /etc/hostname
        hostnamectl set-hostname $pcNNNNNNNNNN
        echo "Hostname changed"
        host="$(hostname)"
        echo "Your new hostname is " $host


fi