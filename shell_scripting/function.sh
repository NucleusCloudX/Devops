#!/bin/bash


<<TOP
asking a user name and password in after runing script

TOP

echo "================ user creating ========================"

function add {
read -p "user name :" username
read -p "user password :" password

sudo useradd -m "$username"
echo -e "$password\n$password" | sudo passwd "$username"
}

add 

echo "============ user created ========================="
function opp {
naw=$(cat /etc/passwd | grep "$username" | wc | awk '{print $1}')

if  [ $naw == 0 ];
then
        echo "user not found"
else
        echo "user found "      

fi

}

opp 


sudo userdel "$username"

opp 


echo "part2"

add
opp

echo "============= END ============="


