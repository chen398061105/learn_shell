#!/bin/bash
clear
#echo -n -e "Login:";
#read acc
read -p "Login:" acc
echo -n -e "Password:";
read -s -t50 -n6 pw
echo 

echo "User: $acc Password: $pw "

