#!/bin/bash
export LANG=en_US.UTF-8

cd /data/rcloud/data/rcs && redis-server --port 6379 --daemonize yes --dbfilename rcs-redis.rdb

cd /data/rcloud && sh scripts/fresh_start.sh --no-build
/data/rcloud/services/rcloud-script-start
/data/rcloud/services/rcloud-proxy
