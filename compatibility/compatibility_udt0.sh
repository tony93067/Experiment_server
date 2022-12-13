#!/bin/bash
# Program:
#	0 BK TCP Server
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
TCP_PATH=/home/tony/other_experiment/compatibility/TCP1/server/memcpy/test_tcp
LB_PATH1=/home/tony/other_experiment/compatibility/UDT1/server/udt4/src
UDT_PATH1=/home/tony/other_experiment/compatibility/UDT1/server/udt4/app
MSS1=("1500")
BK=0
export PATH 	
for (( c=1; c<=3; c++ ))
do
	for str in ${MSS1[@]}
	do
		cd $TCP_PATH
		./server $BK "cubic" &
		export LD_LIBRARY_PATH=$LB_PATH1
		cd $UDT_PATH1
		./udtserver 5000 $str 1 $c $BK
		ps
		sleep 10
		killall -9 udtserver
		killall -9 server
	done
	
done

