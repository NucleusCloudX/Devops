#!/bin/bash


<<TOP
asking a user name and password in after runing script

TOP
green='\033[0,32m'
echo "${green}================ user creating ========================"

read -p "user name :" username
read -p "user password :" password

sudo useradd -m "$username"
echo -e "$password\n$password" | sudo passwd "$username"

echo "============ user created ========================="

naw=$(cat /etc/passwd | grep "$username" | wc | awk '{print $1}')

if  [ $naw == 0 ];
then
        echo "user not found"
else 
        echo "user found "	

fi

sudo userdel "$username"

echo "user deleted"

n1=$(cat /etc/passwd | grep "$username" | wc | awk '{print $1}' )

if [ $n1 == 0 ];
then
      echo "user not found "
else
      echo "user found"
fi


echo "=================== END ==================="

	
