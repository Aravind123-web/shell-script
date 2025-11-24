#!/bin/bash
USERID=$(id -u)
#DECLARTION OF FUNCTION SYNTAX
VALIDATE() {

    echo "exit statue: $1"
    echo "What are you doing: $2"

}


if [ $USERID -ne 0 ] 
then
    echo "Please run this script with root access."
    #exit 1  # Manually exit if error comes
else 
     echo "you are super user."
fi
dnf install git -y
VALIDATE $? "Installing git"

dnf install nginx -y
VALIDATE $? "Installing nginx"
