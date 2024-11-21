#!/bin/bash
# Program that counts down to zero from a given argument

echo -e "\n~~ Countdown Timer ~~\n"

# Check if the argument is a positive integer
if [[ $1 =~ ^[0-9]+$ && $1 -gt 0 ]]
then
  I=$1
  while [[ $I -ge 0 ]]
  do
    echo $I
    (( I-- ))
    sleep 1
  done
else
  echo -e "\nInclude a positive integer as the first argument."
fi