#!/bin/bash
# I want to check weather a number is greater than or not 
# Algorithan steps ---------------
#1. Take input number form user
#2. Check if it is grater than 10 or not 
#3. If it is greater than 10 then print greater
#4. If it is not greater than 10 then print lower 
NUMBER=$1 # DECLARE VARIABLES FROM OUTSIDE
if [ $NUMBER -gt 10 ]
then
echo "Given number $NUMBER is gretaer than 10"
else
echo "Given number $NUMBER is lower than 10"
fi 
