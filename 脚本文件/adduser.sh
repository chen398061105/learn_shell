#!/bin/bash
#Author:chen
#Created Time:2020/10
#Description:create users
USER_LIST=$@
USER_FILE=./user.info

for USER in $USER_LIST;do
   if ! id $USER &>/dev/null;then
    PASS=$(echo $RANDOM  |md5sum |cut -c 1-8) &>/dev/null
    useradd $USER
    echo $PASS |passwd --stdin $USER
    echo "$USER $PASS" >> $USER_FILE
    echo "$USER user create sucessful!" 
   else
    echo "$USER user already exits!" 
  fi
done

