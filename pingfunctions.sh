#!/bin/bash

# Externalize functions for pingmonster.

function startup () {
	if [ -d $OUTDIR ] && [ -L $OUTDIR ] 
	echo Output directory not detected.  Creating ${OUTDIR}...
	mkdir -p $OUTDIR

function cleanup () {
	cat /dev/null > $INTFILE
	cat /dev/null > $EXTFILE
}