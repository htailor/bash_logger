#!/bin/sh

LOG_LEVEL=10

function logging_level(){
	case "$1" in
		DEBUG) LOG_LEVEL=0 ;;
		INFO)  LOG_LEVEL=10 ;;
		WARN)  LOG_LEVEL=20 ;;
		ERROR) LOG_LEVEL=30 ;;
        *) ;;
    esac
}

function datetime(){
	date +"%Y/%m/%d %T"
}

function logging_debug(){
	if [ "$LOG_LEVEL" -lt "10" ]
	then
		echo "$(datetime) DEBUG $1"
	fi
}

function logging_info(){
	if [ "$LOG_LEVEL" -lt "20" ]
	then
		echo "\x1B[36m$(datetime) INFO $1\x1B[0m"
	fi
}

function logging_warn(){
	if [ "$LOG_LEVEL" -lt "30" ]
	then
		echo "\x1B[33m$(datetime) WARN $1\x1B[0m"
	fi
}

function logging_error(){
	echo "\x1B[31m$(datetime) ERROR $1\x1B[0m"
}
