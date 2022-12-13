#!/bin/bash
# Program:
./fairness_udt0.sh
sleep 30
./fairness_udt3.sh
sleep 30
./fairness_udt5.sh
sleep 30
./fairness_tcp5.sh
sleep 60
./fairness_udt10.sh
sleep 30
./fairness_tcp10.sh

