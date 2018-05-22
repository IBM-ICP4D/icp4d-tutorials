#!/bin/bash

TITLE="System Information for $HOSTNAME"
RIGHT_NOW=$(date +"%x %r %Z")
TIME_STAMP="Updated on $RIGHT_NOW by $USER"

##### Functions
usage()
{
    echo "usage: load_samples [-t tutorial_code ] | [-l list available samples] | [-h Prints this messsage]"
}

list_samples()
{
   for dir in $(ls -d */)    
   do
     echo - $dir | sed 's/\///'
   done

}

__load()
{
     cd $1
  .  load.sh

}


##### Main

interactive=

while [ "$1" != "" ]; do
    case $1 in
        -t | --tutorial )       shift
                                module=$1
				__load $module
                                exit
                                ;;
        -l | --list )           list_samples
                                ;;
        -h | --help )           usage
                                exit
                                ;;
        * )                     usage
                                exit 1
    esac
    shift
done

