#!/bin/bash
USER couchdb

set -e;

# start nginx in the background
nginx -g 'daemon on;'

# start couchdb from base docker image
exec /docker-entrypoint.sh /opt/couchdb/bin/couchdb

