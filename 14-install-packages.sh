#1/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

if [ $USERID -ne 0 ]
then
    echo "Please run this script as root user"
    exit 1u
else
    echo "you are root user, you can proceed"
fi

for i in $@
do
    echo "packages to install: $i"

    dnf list installed $i &>>$LOGFILE
    if [ $? -eq 0 ]
    then 
        echo "$i is already installed...SKIPPING"
    else
        echo "$i is not installed...Need to Install"
    fi
done

