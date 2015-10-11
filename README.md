Bash Logger
===========

Provides simple logging functions for bash scripts with different serverity levels.

Key features
-------------

1. Simple functions for logging.
3. Set logging levels to display.
2. Color coded warnings on screen.

Implementation
===========

To add logging functions to a bash script, include the following at the top of the script:

```Bash
source logger.sh
```

Setting the logging level
-------------------------

The log level determines which statements to display, the default level is `INFO` and above. The different levels include `DEBUG`, `INFO`, `WARN`, `CRITICAL`, `ERROR`. The following sets the level to `DEBUG`

```Bash
logging_level "DEBUG"
```

Log statements
--------------

Logging statements at different levels are function specific

**Example 1:**

```Bash
log_debug "This is a debug message"
log_info "This is an info message"
log_warn "This is a warn message"
log_critical "This is a critical message"
log_error "This is an error message"
```
