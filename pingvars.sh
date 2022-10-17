#!/bin/bash

# Variables for pingmonster / config file

PING="/usr/bin/ping"
PINGFLAGS="-c 5"
PINGINT="192.168.1.1"
PINGEXT="8.8.8.8"
INTFILE=/tmp/int.txt
EXTFILE=/tmp/ext.txt
TODAY=`date +%Y-%m-%d`
OUTDIR=/opt/pingmonster
OUTFILE=$TODAY-pingmonster.csv