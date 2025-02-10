#!/bin/bash

<<TOP
created 10 user by using function and loop  
TOP
function on {
echo "================ start ==============="

read -p "username :" username

sudo useradd -m $username 

echo "=========== user added ============="

}

for (( i= $1; i<= $2 ; i++ ))
do
      on
done 


