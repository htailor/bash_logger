#!/bin/bash

source logger.sh

function logs(){
    log_debug "This is a debug test message"
    log_info "This is an info test message"
    log_warn "This is a warn test message"
    log_critical "This is a critical test message"
    log_error "This is an error test message"
}

# default log level
logs

# debug level test
logging_level "DEBUG"
logs

# info level test
logging_level "INFO"
logs

# warn level test
logging_level "WARN"
logs

# critical level test
logging_level "CRITICAL"
logs

# error level test
logging_level "ERROR"
logs
