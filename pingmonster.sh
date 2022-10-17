#!/bin/bash

source ./pingvars.sh
source ./pingfunctions.sh

startup()

# Internal - check the firewall is reachable:
$PING $PINGFLAGS $PINGINT | grep rtt | awk '{print $4}' | sed -e 's/\//,/g' > $INTCSV

# External - get stats
$PING $PINGFLAGS $PINGEXT | grep rtt | awk '{print $4}' | sed -e 's/\//,/g' > $EXTCSV