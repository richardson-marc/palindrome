#!/bin/bash
read -p "Enter a string: " string
if [[ "$(echo "$string" | rev)" == "$string" ]]; then
    echo "Palindrome"

else
    echo "not a palindrome"
    reverse=$(echo $string|rev)
    echo "reverse is $reverse"
    sum=$((string + reverse))
    echo "sum is $sum"
    if [[ "$(echo "$sum" | rev)" == "$sum" ]]; then
	echo "Palindrome"
    else
	echo "still not a palindrome"
	doublereverse=$(echo $reverse|rev)
	echo "doublereverse is $doublereverse"
	# this needs to be a function; it could take lots of iterations
	
fi
fi
