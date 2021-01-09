#!/bin/bash
count=0
declare -A birthdictionary
getBirthYear () {
	echo $(($RANDOM%2+92))
}
getBirthMonth () {
	echo $(($RANDOM%12+1))
}
storeInDict () {
	birthMonth=$1
	birthYear=$2
	value="$birthMonth-$birthYear"
	birthInDict[$birthMonth]="${birthdictionary[$birthMonth]} $value"
}
printBirthMonth () {
	for (( i=1; i<=12; i++ ))
	do
		echo ${birthdictionary[$i]}
	done
}
birthMonthMain () {
	while [ $count -ne 50 ]
	do
		birthYear=$(getBirthYear)
		birthMonth=$(getBirthMonth)
		storeInDict $birthMonth $birthYear
		(( count++ ))
		echo $birthMonth $birthYear
	done
	printBirthMonth
}
birthMonthMain
