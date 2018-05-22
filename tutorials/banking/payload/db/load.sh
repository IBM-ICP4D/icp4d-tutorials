#!/bin/sh

basedir=$(pwd)


##Create database and import
su -c "${basedir}/runbankCmd.sh" - db2inst1

