#!/bin/bash
 
RIGHT_NOW=$(date +"%x %r %Z")
TIME_STAMP="Updated on $RIGHT_NOW by $USER"
PAYLOAD="payload"
k=kubectl
dir=$PWD

##### Functions
 
__load()
{
   for D in payload/*/; do
  
    
   cd ${D}
   # run setup
   . setup.sh

   #run any post post setup
   #. postpush.setup.sh
 
   #reset directory
   cd $dir   

   
   done
   
}

__load
