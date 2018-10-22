#!/bin/sh

export PATH=$PATH:/opt/IBM/DB2/bin
basedir=$(dirname `which $0`)

cd ${basedir}
cd /samples/payload/data
db2move bludb import
