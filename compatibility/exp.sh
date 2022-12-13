#!/bin/bash
# Program:
./compatibility_udt0.sh
sleep 30
./compatibility_tcp0.sh
sleep 60
./compatibility_udt3.sh
sleep 30
./compatibility_tcp3.sh
sleep 60
./compatibility_udt5.sh
sleep 30
./compatibility_tcp5.sh
sleep 60
./compatibility_udt10.sh
sleep 30
./compatibility_tcp10.sh


