#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ] 
then
    echo "Please run this script with root access."
    exit 1  # Manually exit if error comes
else 
     echo "you are super user."
fi
dnf install git -y

if [ $? -ne 0 ]
then 
      echo "Installation of git is Failure"
      exit 23
else  
    echo  "My Installation of git is Success"      
fi

dnf install nginx -y

if [ $? -ne 0]
then 
      echo "Installation of nginx is Failure"
      exit 127    
else  
      echo "My Installation of nginx is Success"      
fi
echo "is Script Procedding?"