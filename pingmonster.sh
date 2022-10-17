#!/bin/bash

. ./pingvars.sh
. ./pingfunctions.sh


# Internal - check the firewall is reachable:
$PING $PINGFLAGS $PINGINT | grep rtt > /tmp/int.txt

# External - get stats
$PING $PINGFLAGS $PINGEXT | grep rtt > /tmp/ext.txt

