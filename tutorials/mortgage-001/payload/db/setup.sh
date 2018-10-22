#!/bin/bash

RIGHT_NOW=$(date +"%x %r %Z")
TIME_STAMP="Updated on $RIGHT_NOW by $USER"
PAYLOAD="payload"
DB2_DOCKER_NAME="Db2wh"
D=docker


##### Functions

__loadDB2Docker()
{
   $D images > /dev/null 2>&1; rc=$?;
   if [[ $rc != 0 ]]; then
                echo "Docker Not Installed. Are you on ICP4D cluster environment ?"
                exit 1
   fi

   echo -e "\nMaking some space for data"
   #make a sample directory
   $D   exec $DB2_DOCKER_NAME bash -c  "mkdir -p samples/payload"

   echo -e "\nMoving Payload to DB2"
   #push the payload
   $D cp data  $DB2_DOCKER_NAME:/samples/payload
   $D cp load.sh  $DB2_DOCKER_NAME:/samples/payload
   $D cp runMortgageCmd.sh  $DB2_DOCKER_NAME:/samples/payload

   echo -e "\nDB2 being loaded with data for you to try out"

   #run setup the payload
   $D exec  $DB2_DOCKER_NAME  bash -c "cd /samples/payload && chmod -R 777 data  &&  ./load.sh"


}

__loadDB2Docker
