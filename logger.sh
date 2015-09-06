#!/bin/bash

LOG_LEVEL=10

function logging_level(){
	case "$1" in
		DEBUG) LOG_LEVEL=0 ;;
		INFO)  LOG_LEVEL=10 ;;
		WARN)  LOG_LEVEL=20 ;;
		CRITICAL) LOG_LEVEL=30;;
		ERROR) LOG_LEVEL=40 ;;
        *) echo "Logging level not set using default settings : INFO";;
    esac
}

function datetime(){
	date +"%Y/%m/%d %T"
}

function logging_debug(){
	if [ "$LOG_LEVEL" -lt "10" ]
	then
		echo -e "\033[01;38;05;10m$(datetime) DEBUG $1\033[0m"
	fi
}

function logging_info(){
	if [ "$LOG_LEVEL" -lt "20" ]
	then
		echo -e "$(datetime) INFO $1"
	fi
}

function logging_warn(){
	if [ "$LOG_LEVEL" -lt "30" ]
	then
		echo -e "\033[01;38;05;11m$(datetime) WARN $1\033[0m"
	fi
}

function logging_critical(){
	if [ "$LOG_LEVEL" -lt "40" ]
	then
		echo -e "\033[01;38;05;13m$(datetime) CRITICAL $1\033[0m"
	fi
}

function logging_error(){
	echo -e "\033[01;38;05;09m$(datetime) ERROR $1\033[0m"
}
