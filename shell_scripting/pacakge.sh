#!/bin/bash

<< TOP
install the pakages 

TOP
echo "================= start =========================="
sudo apt update -y

echo "======================== udated =========================="
sudo apt-get install "$1" -y

echo "================= Pakages insatll ================="
sudo systemctl start "$1"

echo "========================= system start ============================= "

sudo systemctl status "$1"


echo "======================== END =========================="
