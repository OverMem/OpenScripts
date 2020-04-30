#!/bin/bash

TESTDIR=`env | grep "PRGMDIR="`

if [ $TESTDIR = '' ]
then
    INSTALLDIR=/usr/bin
else
    INSTALLDIR=$PRGMDIR/bin
fi

cp -f DeleteGmon Diff Echo Lines MakeInfo Spaces $INSTALLDIR/
mkdir -p $INSTALLDIR/../share/OpenScripts
cp -f .Other/Logo.svg $INSTALLDIR/../share/OpenScripts/

