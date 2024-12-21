#!/bin/bash

# Utility function for logging messages
log_message() {
    echo "[INFO] $(date +'%Y-%m-%d %H:%M:%S') - $1"
}

# Utility function for logging errors
log_error() {
    echo "[ERROR] $(date +'%Y-%m-%d %H:%M:%S') - $1" >&2
}

# Utility function to check if a command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Utility function to exit with an error message
exit_with_error() {
    log_error "$1"
    exit 1
}