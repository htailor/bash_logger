#!/bin/bash

source logger.sh

function logs(){
    logging_debug "This is a debug test message"
    logging_info "This is an info test message"
    logging_warn "This is a warn test message"
    logging_critical "This is a critical test message"
    logging_error "This is an error test message"
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
