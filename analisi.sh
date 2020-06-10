#!/bin/bash

if [ -f "client_log.txt" ]; then
    while read line; do echo $line; 
	done < "client_log.txt"
else 
    echo "$0:Error" 1>&2
fi

while ! [ -a "cassa_log.log" ]; 
    do sleep 1s; 
    echo "waiting for log file to be parsed..."; 
    done

echo "****** statistiche casse ******";

if [ -f "cassa_log.log" ]; then
    while read line; 
    do echo $line; 
    done < "cassa_log.log" 
else 
    echo "$0:Error" 1>&2
fi
