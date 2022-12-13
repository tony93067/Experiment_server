#!/bin/bash
# Program:
#	0 BK TCP Server
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
TCP_PATH1=/home/tony/other_experiment/compatibility/TCP1/server/memcpy/test_tcp
TCP_PATH2=/home/tony/other_experiment/compatibility/TCP2/server/memcpy/test_tcp
BK=0
export PATH 	
cd $TCP_PATH1
./server 0 "cubic" &
cd $TCP_PATH2
./server 0 "bbr"
ps
sleep 10
killall -9 server

