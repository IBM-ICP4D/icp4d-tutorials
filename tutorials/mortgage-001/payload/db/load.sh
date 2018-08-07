#!/bin/sh

basedir=$(pwd)


##Create database and import
su -c "${basedir}/runMortgageCmd.sh" - db2inst1

