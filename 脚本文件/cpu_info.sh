#!/bin/bash
#Author:chen
#Created Time:2020/10
#Description:show cpu info script

cpu () {
  util=$(vmstat |awk '{if(NR==3)print $13+$14}')
  iowait=$(vmstat |awk '{if(NR==3)print $16}')
  echo "Cpu used ${util}%  Iowait ${iowait}%"
}

memory () {
  total=$(free -m |awk '{if(NR==2)printf "%.1f", $2/1024}')
  used=$(free -m |awk '{if(NR==2)printf "%.1f", ($2-$NF)/1024}')
  available=$(free -m |awk '{if(NR==2)printf "%.1f", $NF/1024}')
  echo "Memory Total ${total}G  used ${used}G  available ${available}G"
}
cpu
memory
