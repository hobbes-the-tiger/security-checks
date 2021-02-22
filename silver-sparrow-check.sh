#!/bin/bash
# 
# Checks for Silver Sparrow files v1 and v2

SAVEIFS=$IFS
IFS=$(echo -en "\n\b")

#files found
FOUND=0

# Check to make sure user has root privs or running as root
if [[ `whoami` != "root" ]]; then
   echo "Run this as sudo just to make sure."
   echo "command: sudo bash silver-sparrow-check.sh"
   exit
fi

# Check SHA of file before running. This also helps check for its existence
if [[ "2729294df95ce79feefc6995c3804d092290bb6d" == `shasum silver-sparrow-files.txt  | cut -f1 -d " "` ]]; then
   echo "You have the list of files to check, continuing..."
else
   echo "You don't have the right list of files to check for Silver Sparrow, exiting."
   exit
fi   

# Read the file, add to the file found count if discovered.
while read -r file; do
  echo "Checking for $file ..."
  if test -f $file; then
	printf "$file exists. You might have Silver Sparrow."
        FOUND=$FOUND+1
  fi
done < "silver-sparrow-files.txt"
  
if [ $FOUND != 0 ]; then
 	echo "You might have Silver Sparrow. Double check with Apple and a cybersecurity professional."
else
	echo "Looks like you're in the clear for now. No known Silver Sparrow files found."
fi
