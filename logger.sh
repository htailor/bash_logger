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

function logging(){
	LOG_LEVEL_THRESHOLD=$1
	LOGGING_LEVEL=$2
	COLOR_CODE=$3
	MESSAGE=${@:4}

	LOG_MESSAGE="$(datetime) ${LOGGING_LEVEL} ${MESSAGE}"
	LOG_MESSAGE_TERM="${COLOR_CODE}${LOG_MESSAGE}\033[0m"

	if [ ${LOG_LEVEL} -lt ${LOG_LEVEL_THRESHOLD} ]
	then
		if [[ -t 1 ]]; then
			echo -e ${LOG_MESSAGE_TERM}
		else
			echo ${LOG_MESSAGE}
		fi
	fi
}

function log_debug(){
	LOG_LEVEL_THRESHOLD=10
	LOGGING_LEVEL="DEBUG"
	COLOR="\033[01;38;05;10m"
	logging ${LOG_LEVEL_THRESHOLD} ${LOGGING_LEVEL} ${COLOR} $1
}

function log_info(){
	LOG_LEVEL_THRESHOLD=20
	LOGGING_LEVEL="INFO"
	COLOR="\033[0m"
	logging ${LOG_LEVEL_THRESHOLD} ${LOGGING_LEVEL} ${COLOR} $1
}

function log_warn(){
	LOG_LEVEL_THRESHOLD=30
	LOGGING_LEVEL="WARN"
	COLOR="\033[01;38;05;11m"
	logging ${LOG_LEVEL_THRESHOLD} ${LOGGING_LEVEL} ${COLOR} $1
}

function log_critical(){
	LOG_LEVEL_THRESHOLD=40
	LOGGING_LEVEL="CRITICAL"
	COLOR="\033[01;38;05;13m"
	logging ${LOG_LEVEL_THRESHOLD} ${LOGGING_LEVEL} ${COLOR} $1
}

function log_error(){
	LOG_LEVEL_THRESHOLD=50
	LOGGING_LEVEL="ERROR"
	COLOR="\033[01;38;05;09m"
	logging ${LOG_LEVEL_THRESHOLD} ${LOGGING_LEVEL} ${COLOR} $1
}
