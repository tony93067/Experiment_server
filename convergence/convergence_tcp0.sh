#!/bin/bash
# Program:
#	0 BK TCP Server
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
TCP_PATH1=/home/tony/other_experiment/fairness/TCP1/server/memcpy/test_tcp
TCP_PATH2=/home/tony/other_experiment/fairness/TCP2/server/memcpy/test_tcp
Method=("cubic" "bbr")
BK=0
export PATH 	
for me in ${Method[@]}
do
	cd $TCP_PATH1
	./server 0 $me &
	cd $TCP_PATH2
	./server 0 $me
	ps
	sleep 10
	killall -9 server
done

