#!/bin/bash

read option

if [ "${option,,}" = "y" ]
then
	echo "YES"
else 
	echo "NO"
fi
