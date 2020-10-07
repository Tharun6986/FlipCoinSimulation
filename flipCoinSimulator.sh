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
while [[ $heads -le 21 && $tails -le 21 ]]
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

##UserCase3
count=0;
while [ $count -le 42 ]
do
   	((count++))
   	if [ $((RANDOM%2)) -eq 1 ]
   	then
		echo "heads wins"
      	((heads++))
   	else
     		echo "tails wins"
      	((tails++))
   	fi
		if [ $heads -eq 21 ]
		then
			echo "head wins by "$heads" times"
			exit
		elif [ $tails -eq 21 ]
		then
			echo "tail wins by "$tails" times"
			exit
		elif [ $heads -eq $tails -a $tails -eq $heads ]
		then
			echo "Tie"
		fi
done

