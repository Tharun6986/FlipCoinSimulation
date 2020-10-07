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

##Showing number of times each results have won. UserCase2
heads=0;
tails=0;
while [[ $heads -le 10 && $tails -le 10 ]]
do
	Result=$((RANDOM%2))
	if [ $Result -eq 1 ]
	then
	    echo "Head won"
	    heads=$(($heads+1))
	else
	    echo "Tails won"
	    tails=$(($tails+1))
	fi
done
echo "Number of times heads won: " $heads
echo "Number of times tails won: " $tails
