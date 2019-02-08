#!/bin/sh
## start redis
/etc/init.d/redis-server start
## run RCloud services
su - rcloud /data/rcloud/scripts/run-rcloud.sh
