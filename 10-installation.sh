#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ] 
then
    echo "Please run this script with root access."
    exit 1  # Manually exit if error comes
else 
     echo "you are super user."
fi
dnf install gitt -y

if [ $? -ne 0 ]
then 
      echo "Installation of git is Failure"
      exit 23
fi
echo "is Script Procedding?"