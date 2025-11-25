#!/bin/bash
USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

#colors given below
R="\e[31m]"
G="\e[32m]"
N="\e[0m]

echo "script started executing at: $TIMESTAMP"

#DECLARTION OF FUNCTION SYNTAX
VALIDATE(){

    #echo "exit statue: $1"
    #echo "What are you doing: $2"
    if [ $1 -ne 0 ]
    then 
         echo "$2....$R Failure $N"
         exit 1
    else 
         echo "$2....$G Success $N"
    fi
}
if [ $USERID -ne 0 ] 
then
    echo "Please run this script with root access."
    #exit 1  # Manually exit if error comes
else 
     echo "you are super user."
fi
dnf install git -y &>>$LOGFILE
VALIDATE $? "Installing git"

dnf install nginx -y &>>$LOGFILE
VALIDATE $? "Installing nginx"
