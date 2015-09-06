#!/bin/bash

source logger.sh

function logs(){
    logging_debug "Debug test"
    logging_info "Info test"
    logging_warn "Warn test"
    logging_critical "Critial test"
    logging_error "Error test"
}

# default log level
logs

# debug level test
logging_level DEBUG
logs

# info level test
logging_level INFO
logs

# warn level test
logging_level WARN
logs

# critical level test
logging_level CRITICAL
logs

# error level test
logging_level ERROR
logs
