#!/bin/bash

# Externalize functions for pingmonster.

# in theory the next line shouldn't be necessary:
source ./pingvars.sh

function startup () {
	if [ -d $OUTDIR ] && [ -L $OUTDIR ] 
	echo Output directory not detected.  Creating ${OUTDIR}...
	mkdir -p $OUTDIR
}