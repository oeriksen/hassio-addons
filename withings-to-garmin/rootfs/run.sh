#!/usr/bin/with-contenv bashio

set -e

bashio::log.info "Starting..."
# pip3 list
cd /withings_sync
python3 myversion.py
