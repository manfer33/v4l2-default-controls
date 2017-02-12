#!/bin/bash
#
# Shell Script to set all parameters to default value of a camera using v4l tools
# Copyright (c) 2017 Manuel Jesús Fernández  

param=($(v4l2-ctl -l | awk '{print $1}'))
default_value=($(v4l2-ctl -l | awk '{split($0,a,"default="); split(a[2],b," "); print b[1]}'))
current_value=($(v4l2-ctl -l | awk '{split($0,a,"value="); split(a[2],b," "); print b[1]}'))

# Length of an array
len=${#param[@]}
 
# Loop for read all parameters
for (( i=0; i<${len}; i++ ));
do
	if [ ${default_value[$i]} != ${current_value[$i]} ]; then
		# To show the param which whill be changed
		# echo ${param[$i]} -- ${default_value[$i]} - ${current_value[$i]}
		v4l2-ctl -c ${param[$i]}=${default_value[$i]}
	fi
done

