#!/bin/sh

export PATH=$PATH:/opt/IBM/DB2/bin
basedir=$(dirname `which $0`)

cd ${basedir}
db2 create database bank  on /mnt/dedicated_vol/Repository/is-xmetadocker/Repos
cd /sampledata/Sample_data/BANKDEMO
db2move bank import

##Connect to database
echo "Running db2 connect to Bank "
db2 connect to bank user db2inst1 using isadmin
db_rc=$?

if [[ $db_rc != 0 ]] ;then
  echo "DB2 Connection failed"
  exit 1
fi
