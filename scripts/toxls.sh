#!/bin/bash

LOG_DIR=../logs

[ ! -d $LOG_DIR ] && mkdir -p $LOG_DIR 
[ "$(find logs -iname $LOG_DIR/*bench.output)" ] || exit 1

echo "workload;son;h1;h2;wm;wma;pnr" 

ls -A $LOG_DIR/*bench.output | while read line
do
	workload=$(echo $line | awk -F"_" '{print $1"_"$2}' | sed 's/^.[^\/]*\///g')
	egrep -w son[0-9] $line | grep -v PNR | sed 's/.*: //g' | sed 's/ .[^:]*\(:\)/;/g' | sed "s/^/$workload;/g" | sed 's/%//g'
done
