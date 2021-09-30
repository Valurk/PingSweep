#!/bin/bash

if [ "$1" == "" ]

then 

echo "Usage: ./pingSweep.sh [network]"

echo "example: ./pingSweep.sh 192.168.0"

else 

echo -e "Active hosts\n"

for x in `seq 1 254` ; do

ping -c 1 $1.$x | grep "64 bytes" | cut -d " " -f4 | sed 's/.$//'

done

fi 
