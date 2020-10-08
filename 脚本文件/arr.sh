#!/bin/bash

#ARR=('a' 'b' 'c' 'd')
#echo ${ARR[1]}
#echo ${ARR[@]}
#echo ${#ARR[@]}
#echo ${!ARR[@]}
declare -A ass_arr1
declare -A ass_arr2
ass_arr1[name]='xiaoming'
ass_arr2=([name]='xiaohong' [age]=12)
echo ${ass_arr1[name]}
echo ${ass_arr2[name]}

