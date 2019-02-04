#!/bin/bash

#set -x

RIGHT_NOW=$(date +"%x %r %Z")
TIME_STAMP="Updated on $RIGHT_NOW by $USER"
PAYLOAD="/tmp/samples/payload"
IFMX_DOCKER_NAME="dv-ifmx-tutorial"
D=docker


##### Functions

__loadIFMXDocker()
{


   $D images > /dev/null 2>&1; rc=$?;
   if [[ $rc != 0 ]]; then
                echo "Docker Not Installed. Are you on ICP4D cluster environment ?"
                exit 1
   fi

   if [[ ! `docker images --quiet ibmcom/informix-developer-database:latest` ]]; then
        echo -e "\nLoading Docker $IFMX_DOCKER_NAME ..."
        $D run -d -it --name $IFMX_DOCKER_NAME -p 9088:9088 -p 9089:9089 -p 27017:27017 -p 27018:27018 -p 27883:27883 -e LICENSE=accept -e SIZE=small ibmcom/informix-developer-database:latest
        #Wait couple of minutes to make sure db2 instance started and online
        sleep 120
   fi

   echo -e "\nMaking some space for data"
   #make a sample directory
   $D   exec $IFMX_DOCKER_NAME bash -c  "mkdir -p $PAYLOAD"

   echo -e "\nMoving Payload to Informix"
   #push the payload
   $D cp data  $IFMX_DOCKER_NAME:$PAYLOAD
   $D cp load.sh  $IFMX_DOCKER_NAME:$PAYLOAD/data

   echo -e "\nInformix being loaded with data for you to try out"

   #run setup the payload
   #$D exec $IFMX_DOCKER_NAME  bash -c "cd $PAYLOAD/data  &&  ./load.sh"
   $D exec $IFMX_DOCKER_NAME  bash -c "cd $PAYLOAD/data; ./load.sh"


}

__loadIFMXDocker
