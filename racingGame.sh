#!/bin/bash

# GENERAL MESSAGE
echo "Welcome to CISC 220 Racing Arena"

echo "User 1 press 1 to move forward, User 2 press 2 and User 3 press 3"

echo "|->                            # Lane 1 #"
echo "|->                            # Lane 2 #"
echo "|->                            # Lane 3 #"

# INPUT
read -n1 -p "Enter step: " input

# INPUT VERIFICATION
flag=0
while true; do

	case $input in
	*[!0-3]*) flag=0 ;;
	*) flag=1 ;;
	esac

	if [[ $flag == 0 ]] || [[ ${#totalVar} == 0 ]]; then
		echo ""
		read -n1 -p"ERROR! Please insert 1, 2 or 3: " input
		continue
	elif [[ $flag == 1 ]]; then
		break
	fi
	
done

# GENERAL GAME ENGINE DESIGN
#while(totalScoreVariable <= 40) //the code below should be in this loop, we should think of how to make a total score variable
lane1=0

if (( input == 1 )); then
	lane1=(($lane1+1))
	#clear_screen
	counter=0
	for (( n=0; n<lane1; n++ )); do
		printf("~")
	printf "|->"
	printf "\t"
	printf "# Lane 1 #"
fi
	
	


