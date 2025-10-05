#!/bin/bash

echo "All variables: $@" # If you want to print all variables 
echo "Number of variables passed: $#" # How many variables passed to script
echo "Script Name: $0" # If you want to know script name
echo "Current working directory: $PWD" # It prints curent working directory
echo "Home directory of current user: $HOME"
echo "Which user running this script: $USER"
echo "Hostname: $HOSTNAME"
echo "which process ID of the current shell-script: $$"
sleep 60

