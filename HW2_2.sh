#!/bin/bash

#Enter username
read -p "Please. Enter username: " username

#Checking username

grep "username:" /etc/passwd >/dev/null
if ! [ $? -ne 0 ]; then 
	echo "1"
else
#Create user

sudo useradd "$username"
#Checking creation

if [ $? -eq 0 ]; then
	echo "User '$username'
	created"
else
	echo "Cant create user '$username'"
fi
fi
