#!/bin/bash

<< to
usr add && set the passwords and 
see the user are exits are not after user delete 

to

#arguments
echo "user adding "
sudo useradd -m  "$1"
echo "user adding sucefuly "

echo -e "$2\n$2" | sudo passwd "$1"
echo "password add sucefully  "



user=$(cat /etc/passwd | grep "$1" | wc | awk '{print $1}')


if [ $user  == 0 ]; 
then 
        echo "user not exits"

else 
        
         echo "user presents"
fi



sudo userdel "$1"

echo "user deleted"

 

#user1=$(cat /etc/passwd | grep "$1" | wc | awk '{print $1}')

#if [ $user1 == 0 ];
#then
 #       echo "user not exits"

#else

 #        echo "user presents"

#fi

echo "ending"
