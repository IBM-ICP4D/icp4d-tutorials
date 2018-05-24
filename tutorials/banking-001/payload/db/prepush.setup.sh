#!/bin/bash
 
TITLE="Loading Banking Sample Data. Something Awesome to be witnessed. "
RIGHT_NOW=$(date +"%x %r %Z")
TIME_STAMP="Updated on $RIGHT_NOW by $USER"
echo ${TITLE}
PAYLOAD="payload"
k=kubectl

##### Functions
 
__load()
{
   for D in payload/*/; do
    

    pod_name=`cat ${D}conf | grep pod-name | cut -f2 -d'='`
    pod=`kubectl get pods  -n zen  | grep ${pod_name} | grep Running | cut -f1 -d' '`
    
   #make a sample directory
   $k -n zen exec $pod -- bash -c "mkdir -p samples/payload"
   
   #push the payload 
   $k cp $D  -n zen $pod:/samples/payload

   
   #run setup the payload 
   $k -n zen exec $pod -i -t -- bash -c "cd /samples/$D && ./load.sh" 2>&1 | tee setup.log

   #run any post post setup
   . ${D}/postpush.setup.sh
   
   done
   
}

__load
