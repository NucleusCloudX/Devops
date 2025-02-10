#!/bin/bash 

<< msg
 

 this was created user with agruments it on 

msg


# ./user.sh 

echo "========user add and password set ============"

sudo useradd -m "$1"

echo -e "$2\n$2" | sudo passwd "$1" 


echo "======= completed ========= "
