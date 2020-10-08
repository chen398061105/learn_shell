#!/bin/bash

NUM1=`echo "1.5*10"|bc|cut -d "." -f1`
NUM2=$((2*10))

test $NUM1 -gt $NUM2;echo $?
