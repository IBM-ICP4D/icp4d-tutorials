#!/bin/bash
 
TITLE="Loading Banking Sample Data. Something Awesome to be witnessed. "
RIGHT_NOW=$(date +"%x %r %Z")
TIME_STAMP="Updated on $RIGHT_NOW by $USER"
echo ${TITLE}
PAYLOAD="payload"
k=kubectl
dir=$PWD

##### Functions
 
__load()
{
   for D in payload/*/; do
  
   echo Loading ${D}
    
   cd ${D}
   # run setup
   . setup.sh

   #run any post post setup
   . postpush.setup.sh
 
   #reset directory
   cd $dir   

   
   done
   
}

__load
