#!/bin/bash -e

# ....................................................................................................
# Error Report

function error_report()
{
    echo "[$(date '+%H:%M:%S')] - [ERROR]: Script execution failed on line ${1}" >&2
}

trap "error_report ${LINENO}" ERR

# ....................................................................................................
# Executions

go test -coverprofile=coverage.out
docker container run --volume $(pwd):/usr/src --rm sonarsource/sonar-scanner-cli:4 sonar-scanner

# ....................................................................................................
# End Script