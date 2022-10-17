#!/bin/bash

source ./pingvars.sh

# Internal - check the firewall is reachable:
OUTPUT=`$PING $PINGFLAGS $PINGINT | grep rtt | awk '{print $4}' | sed -e 's/\//,/g'`
if [ -z "$OUTPUT" ] # if its empty - aka no ping reply
then
	$OUTPUT=",,,"
fi
echo ${TIME},${OUTPUT} > $INTCSV

# External - get stats
OUTPUT=`$PING $PINGFLAGS $PINGEXT | grep rtt | awk '{print $4}' | sed -e 's/\//,/g'`
if [ -z "$OUTPUT" ] # if its empty - aka no ping reply
then
	$OUTPUT=",,,"
fi
echo ${TIME},${OUTPUT} > $EXTCSV