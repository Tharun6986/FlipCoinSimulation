#!/bin/bash -x
echo "Welcome to Flip Coin Simulation code"

##Displaying Heads or Tails UserCase1
Result=$((RANDOM%2))
if [ $Result -eq 1 ]
then
     echo "Heads"
else
     echo "Tails"
fi

