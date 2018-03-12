#!/bin/bash

# Prepare log files and start outputting logs to stdout
mkdir -p /service/logs
touch /service/logs/gunicorn.log
touch /service/logs/gunicorn.access.log
touch /service/logs/gunicorn.error.log


cd app
export PYTHONPATH=
export ANALYTICS_DB=postgres://mfCYHH6RQU:PR9EF67tnu@gogovan-analytics.crxd442otmmr.ap-southeast-1.rds.amazonaws.com:5432/analytics
export EVENTS_STREAMING_DEMO_ENABLED=0
exec 
    gunicorn dash:app \
    --log-level DEBUG \
    --bind 0.0.0.0:8001 \
    -t 120 --reload
"$@"