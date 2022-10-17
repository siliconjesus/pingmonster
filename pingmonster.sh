#!/bin/bash

PING="/usr/bin/ping"
PINGFLAGS="-c 5"
PINGINT="192.168.1.1"
PINGEXT="8.8.8.8"
INTFILE=/tmp/int.txt
EXTFILE=/tmp/ext.txt
TODAY=`date +%Y-%m-%d`
OUTDIR=/opt/pingmonster
OUTFILE=$TODAY-pingmonster.csv

function startup () {
	if [ -d $OUTDIR ] && [ -L $OUTDIR ] 
	echo Output directory not detected.  Creating ${OUTDIR}...
	mkdir -p $OUTDIR

function cleanup () {
	cat /dev/null > $INTFILE
	cat /dev/null > $EXTFILE
}

# Internal - check the firewall is reachable:
$PING $PINGFLAGS $PINGINT | grep rtt > /tmp/int.txt

# External - get stats
$PING $PINGFLAGS $PINGEXT | grep rtt > /tmp/ext.txt

