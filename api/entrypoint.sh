#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
ls tmp/pids
rm -f tmp/pids/server.pid

# Then exec the container's main process (what's set as CMD in the Dockerfile).
bundle exec rackup --host 0.0.0.0 -p $PORT
