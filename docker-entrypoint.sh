#!/bin/sh
set -e

if [ "$#" -eq 0 ]; then
    echo "Usage: docker run github-activity-cli <username>"
    exit 1
fi

exec /app/github-activity "$@"
