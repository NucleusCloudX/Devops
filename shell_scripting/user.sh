#!/bin/bash 

<< TO
 

 this was created user with agruments it 

TO


# ./user.sh 

echo "========user add and password set ============"

sudo useradd -m "$1"

echo "user add sucefully"
cat /etc/passwd | grep "$1"


echo -e "$2\n$2" | sudo passwd "$1"
 
echo "password set sucefully"
sudo cat /etc/shadow | grep "$1"
 
sudo userdel "$1"

echo "user delete"

cat /etc/passwd | grep "$1" | wc 

echo "word count are zero to user are delete"

echo "======= completed ========= "
