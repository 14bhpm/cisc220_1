#!/bin/bash

# GENERAL MESSAGE
echo "Welcome to CISC 220 Racing Arena"

echo "User 1 press 1 to move forward, User 2 press 2 and User 3 press 3...... User N, press N"

echo "|->                            # Lane 1 #"
echo "|->                            # Lane 2 #"
echo "|->                            # Lane N #"

# ALIAS DEFINITION FOR CLEAR SCREEN
alias cls='printf "\033c"'

# GET NUMBER OF USERS
read -n1 -p "Enter the amount of users: " mainInput

# I INCREMENTED THIS CUS THE MAIN FOR LOOP BELOW STARTS FROM N=1
((mainInput=$mainInput+1))

# DECLARE LANE1=0, LANE2=0, LANEN=0...... BASED ON USERS INPUT
c=0
for (( n=0; n<$mainInput; n++ )); do
    eval "lane$c=0";
    c=$((c+1));
done

# DECLARE remDIstance1=40, remDistance2=40, remDistanceN=40..... BASED ON USERS INPUT
d=0
for (( n=0; n<$mainInput; n++ )); do
	eval "remDistance$d=40";
    d=$((d+1));
done


# KEEPS ON LOOPING UNTIL ANY OF THE LANE VARIABLES IS GREATER OR EQUAL TO 40
while true; do
	echo ""
	# INPUT
	read -n1 -p "Enter step: " input
	
	# CLEAR SCREEN
	clear
	
	((lane$input+=1))
	((remDistance$input-=1))
	lanename=lane$input	
	for ((n=1; n<$mainInput; n++)); do
		for ((i=0; i<lane$n; i++)); do
			printf "~"
		done
		
		printf "|->"
		
		for ((j=0; j<remDistance$n; j++)); do
			printf " "
		done
		
		printf "# Lane $n #"
		printf "\n"
		
			
	done
	if [[ $[$lanename] -gt 39 ]]; then
		echo "Player $input wins!! Well played !"
		exit
	fi	

done

	
	


