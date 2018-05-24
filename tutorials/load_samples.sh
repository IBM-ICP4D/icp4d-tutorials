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
   if [ -d "$1" ]; then
     cd $1
    .  load.sh
   else
     echo "Invalid Tutorial Number " $1 
   fi
}


##### Main

tutorial=
help=
list=
 

if [[ $# -eq 0 ]]; then
    usage
	exit 1
fi


while [ "$1" != "" ]; do
    case $1 in
        -t | --tutorial )       shift
                                module=$1
								tutorial=true								
                                ;;
        -l | --list )           list=true
                                ;;
        -h | --help )           help=true
                                ;;
        * )                     usage
                                
    esac
    shift
done


if [ "$list" = true ]; then
	list_samples
	exit

fi

if [ "$help" = "true" ]; then
	usage
	exit

fi


if [ "$tutorial" = "true" ]; then
	__load $module

fi
