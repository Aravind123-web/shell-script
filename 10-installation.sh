#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ] 
then
    echo "Please run this script with root access."
    exit 1  # Manually exit if error comes
else 
     echo "you are super user."
fi
dnf install mysql -y

if [ $? -ne 0 ]
then 
      echo "Installation of MySql is Failure"
fi
echo "is Script Procedding?"