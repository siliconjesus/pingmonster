#!/bin/bash

# Variables for pingmonster / config file

PING="/usr/bin/ping"
PINGFLAGS="-c 5"
PINGINT="192.168.1.1"
PINGEXT="8.8.8.8"
TODAY=`date +%Y-%m-%d`
OUTDIR=/opt/pingmonster/logs
INTCSV=$OUTDIR/$TODAY-pingmonster-int.csv
EXTCSV=$OUTDIR/$TODAY-pingmonster-ext.csv