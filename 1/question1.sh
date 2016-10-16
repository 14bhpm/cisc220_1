#!/bin/bash

read -n1 -p"Please insert a number: " totalVar

[ "$totalVar" == ":" ] && echo "" && echo "Thank you for using CISC 220's best calculator" && exit
[ "$totalVar" == "q" ] && echo "" && echo "Thank you for using CISC 220's best calculator" && exit

flag=0
while true; do

	case $totalVar in
	*[!0-9]*) flag=0 ;;
	*) flag=1 ;;
	esac

	if [[ $flag == 0 ]] || [[ ${#totalVar} == 0 ]]; then
		echo ""
		read -n1 -p"ERROR! Please insert a number: " totalVar
		[ "$totalVar" == ":" ] && echo "" && echo "Thank you for using CISC 220's best calculator" && exit
		[ "$totalVar" == "q" ] && echo "" && echo "Thank you for using CISC 220's best calculator" && exit
		continue
	elif [[ $flag == 1 ]]; then
		break
	fi
	
done

while true; do

	echo ""
	read -n1 -p "Please insert an operator: " opt
	
	if [[ "$opt" == "q" ]]; then
		echo "" && echo "Thank you for using CISC 220's best calculator" && exit
		exit
	fi
	
	while true; do
	
		if [[ $opt != '*' ]] && [[ $opt != '+' ]] && [[ $opt != '/' ]] && [[ $opt != '-' ]] && [[ ${#opt} == 0 ]]  ; then
			echo ""
			read -n1 -p"ERROR! Please insert an operator: " opt
			[ "$opt" == ":" ] && echo "" && echo "Thank you for using CISC 220's best calculator" && exit
			[ "$opt" == "q" ] && echo "" && echo "Thank you for using CISC 220's best calculator" && exit
			continue
		else
			break
		fi
	
	done
	
	echo ""
	read -n1 -p "Please insert a number: " secondNum
	[ "$secondNum" == ":" ] && echo "" && echo "Thank you for using CISC 220's best calculator" && exit
	[ "$secondNum" == "q" ] && echo "" && echo "Thank you for using CISC 220's best calculator" && exit
	
	flag=0
	while true; do

		case $secondNum in
		*[!0-9]*) flag=0 ;;
		*) flag=1 ;;
		esac
	
		if [[ $flag == 0 ]] || [[ ${#secondNum} == 0 ]] ; then
			echo ""
			read -n1 -p"ERROR! Please insert a number: " secondNum
			[ "$secondNum" == ":" ] && echo "" && echo "Thank you for using CISC 220's best calculator" && exit
			[ "$secondNum" == "q" ] && echo "" && echo "Thank you for using CISC 220's best calculator" && exit
			continue
		elif [[ $flag == 1 ]]; then
			break
		fi
	
	done
	
	if [ "$opt" == '*' ]
	then
		((totalVar=$totalVar * $secondNum))
	elif [ "$opt" == "-" ]
	then
		((totalVar=$totalVar-$secondNum))
	elif [ "$opt" == "+" ]
	then
		((totalVar=$totalVar+$secondNum)) 
	elif [ "$opt" == "/" ] 
	then
		((totalVar=$totalVar/$secondNum))
	fi
	
	echo ""
	echo "The result so far is $totalVar"
	
done

echo "Thank you for using CISC 220's best calculator"
