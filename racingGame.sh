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

# KEEPS ON LOOPING UNTIL ANY OF THE LANE VARIABLES IS GREATER OR EQUAL TO 40
while true; do
	
	# NEW LINE
	echo ""
	
	# INPUT
	read -n1 -p "Enter step: " input
	
	# CLEAR SCREEN
	printf "\033c"
	
	# INPUT VERIFICATION
	#flag=0
	#while true; do

#		case $input in
#		*[!1-3]*) flag=0 ;;
#		*) flag=1 ;;
#		esac

#		if [[ $flag == 0 ]] || [[ ${#totalVar} == 0 ]]; then
#			echo ""
#			read -n1 -p"ERROR! Please insert 1, 2 or 3: " input
#			continue
#		elif [[ $flag == 1 ]]; then
#			break
#		fi
	
#	done
	
	# IF-ELSE BLOCK CHECKS INPUT, INCREMENTS ATTRIBUTES AND PRINTS ACCORDINGLY
	if [[ $input == 1 ]]; then
	
		# INCREMENT
		((lane1=$lane1+1))
		
		# PRINT COVERED DISTANCE
		for (( n=0; n<$lane1; n++ )); do
			printf "~"
		done
		
		# PRINT CAR
		printf "|->"
		
		# PRINT REMAINING DISTANCE
		(( remDistance1=40-$lane1 ))
		for (( n=0; n<$remDistance1; n++ )); do
			printf " "
		done
		
		# PRINT END OF TRACK 2
		printf "# Lane 1 #"
	
	elif [[ $input == 2 ]]; then
	
		# INCREMENT
		((lane2=$lane2+1))
		
		# PRINT COVERED DISTANCE
		for (( n=0; n<$lane2; n++ )); do
			printf "~"
		done
		
		# PRINT CAR
		printf "|->"
		
		# PRINT REMAINING DISTANCE
		(( remDistance2=40-$lane2 ))
		for (( n=0; n<$remDistance2; n++ )); do
			printf " "
		done
		
		# PRINT END OF TRACK 2
		printf "# Lane 2 #"
		
	elif [[ $input == 3 ]]; then
	
		# INCREMENT
		((lane3=$lane3+1))
		
		# PRINT COVERED DISTANCE
		for (( n=0; n<$lane3; n++ )); do
			printf "~"
		done
		
		# PRINT CAR
		printf "|->"
		
		# PRINT REMAINING DISTANCE
		(( remDistance3=40-$lane3 ))
		for (( n=0; n<$remDistance3; n++ )); do
			printf " "
		done
		
		# PRINT END OF TRACK 3
		printf "# Lane 3 #"
	fi
	
	# LOOP CONDITION
	if (( $lane1>=40 || $lane2>=40 || $lane3>=40 )); then
		break
	fi
done

# IF-ELSE BLOCK CHECKS WHO WINS
if [[ $lane1>=40 ]]; then
	echo "PLAYER 1 WINS"
elif [[ $lane2>=40 ]]; then
	echo "PLAYER 2 WINS"
elif [[ $lane3>=40 ]]; then
	echo "PLAYER 3 WINS"
fi

echo done
	
	


