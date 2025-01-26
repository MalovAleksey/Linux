#!/bin/bash
PREFIX=$1
INTERFACE=$2

trap 'echo "Ping exit (Ctrl-C)"; exit 1' 2

for SUBNET in {1..1}
do

for HOST in {1..5}
do
#echo "IP : $PREFIX.$SUBNET.$HOST"
ping -c 1 -I $INTERFACE $PREFIX"."$SUBNET"."$HOST  2> /dev/null  1> /dev/null
if  [[ $? -eq 0 ]];
then
host=$(echo "$PREFIX.$SUBNET.$HOST") && getent hosts $PREFIX"."$SUBNET"."$HOST 1>> /home/admin/network
fi
done
done

