#!/bin/bash

arr=(10 8 20 100 12)
echo ${arr[*]}

for ((i = 0; i < ${#arr[*]}; i++))
do
	for((j = 0; j < $((${#arr[*]} - i - 1)); j++ ))
	do
		if((${arr[j]}>${arr[$((j + 1))]}))
		then
			temp=${arr[j]}
			arr[$j]=${arr[$((j + 1))]}
			arr[$((j + 1))]=$temp
		fi	
	done
done
echo ${arr[*]}
