#!/bin/bash
# Program:
#	0 BK TCP Server
BKTCP_PATH=/home/tony/論文code/論文code/實驗一/TCP/server/memcpy/test_tcp
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
TCP_PATH1=/home/tony/other_experiment/compatibility/TCP1/server/memcpy/test_tcp
TCP_PATH2=/home/tony/other_experiment/compatibility/TCP2/server/memcpy/test_tcp
BK=3
export PATH 
cd $BKTCP_PATH
./downlink_run3.sh	
cd $TCP_PATH1
./server $BK "cubic" &
cd $TCP_PATH2
./server $BK "bbr"
killall -9 background_server_downlink
ps
sleep 10
killall -9 server

