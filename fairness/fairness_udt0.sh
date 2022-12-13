#!/bin/bash
# Program:
#	0 BK TCP Server
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
LB_PATH1=/home/tony/other_experiment/fairness/UDT1/server/udt4/src
UDT_PATH1=/home/tony/other_experiment/fairness/UDT1/server/udt4/app
LB_PATH2=/home/tony/other_experiment/fairness/UDT2/server/udt4/src
UDT_PATH2=/home/tony/other_experiment/fairness/UDT2/server/udt4/app
MSS=("1500" "1250" "1000" "750" "500" "250" "100")
MSS1=("1500")
BK=0
export PATH 	
for (( c=1; c<=3; c++ ))
do
	for str in ${MSS1[@]}
	do
		export LD_LIBRARY_PATH=$LB_PATH1
		cd $UDT_PATH1
		./udtserver 5000 $str 1 $c $BK &
		export LD_LIBRARY_PATH=$LB_PATH2
		cd $UDT_PATH2
		./udtserver 5050 $str 1 $c $BK
		ps
		sleep 10
		killall -9 udtserver
	done
	
done

