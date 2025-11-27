#1/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "Please run this script as root user"
    exit 1
else
    echo "you are root user, you can proceed"
fi

for i in $@
do
    echo "packages to install: $i"

    dnf list installed $i
done

