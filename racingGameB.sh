#!/bin/bash

# GENERAL MESSAGE
echo "Welcome to CISC 220 Racing Arena"

echo "User 1 press 1 to move forward, User 2 press 2 and User 3 press 3"

echo "|->                            # Lane 1 #"
echo "|->                            # Lane 2 #"
echo "|->                            # Lane 3 #"

# ALIAS DEFINITION FOR CLEAR SCREEN
alias cls='printf "\033c"'

# ATTRIBUTES
lane1=0
lane2=0
lane3=0
remDistance1=40
remDistance2=40
remDistance3=40

# KEEPS ON LOOPING UNTIL ANY OF THE LANE VARIABLES IS GREATER OR EQUAL TO 40
while true; do
	echo ""
	# INPUT
	read -n1 -p "Enter step: " input
	
	# CLEAR SCREEN
	printf "\033c"
	
	((lane$input+=1))
	((remDistance$input-=1))	
	for ((n=1; n<4; n++)); do
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
	# LOOP CONDITION
	if (( $lane1>=40 || $lane2>=40 || $lane3>=40 )); then
		break
	fi
done

# IF-ELSE BLOCK CHECKS WHO WINS
if [[ $lane1>39 ]]; then
	echo "PLAYER 1 WINS"
elif [[ $lane2>39 ]]; then
	echo "PLAYER 2 WINS"
elif [[ $lane3>39 ]]; then
	echo "PLAYER 3 WINS"
fi

echo done
	
	


